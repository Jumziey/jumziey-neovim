{ pkgs }:
{
  material-vim = import ./material-vim.nix { inherit pkgs; };
  custom-hop-vim = import ./custom-hop-vim.nix { inherit pkgs; };
  plantuml-previewer-vim = import ./plantuml-previewer-vim.nix { inherit pkgs; };
}



