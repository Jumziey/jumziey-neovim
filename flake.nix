{
  description = "My own Neovim flake";
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs";
    };
    neovim = {
      url = "github:neovim/neovim/release-0.9?dir=contrib";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils = {
      url = "github:numtide/flake-utils";
    };
  };
  outputs = { self, nixpkgs, neovim, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlayFlakeInputs = prev: final: {
          neovim = neovim.packages.${prev.system}.neovim;
          vimPlugins = final.vimPlugins // import ./packages/vimPlugins { pkgs = prev; };
        };

        runtimeDepsOverlay = import ./packages/runtimeDepsOverlay;

        overlayMyNeovim = prev: final: {
          myNeovim = import ./packages/myNeovim.nix {
            pkgs = prev;
          };
        };

        pkgs = import nixpkgs {
          system = system;
          overlays = [ runtimeDepsOverlay overlayFlakeInputs overlayMyNeovim ];
        };

      in
      {
        packages = rec {
          nvim = pkgs.myNeovim;
          default = nvim;
        };

        apps = rec {
          nvim = flake-utils.lib.mkApp { drv = self.packages.${system}.nvim; };
          default = nvim;
        };
      });
}
