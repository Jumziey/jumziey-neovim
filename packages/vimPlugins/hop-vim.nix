{ pkgs }:
pkgs.vimUtils.buildVimPlugin {
    name = "hop-vim";
    src = pkgs.fetchFromGitHub {
      owner = "smoka7";
      repo = "hop.vim";
      rev = "6d853addd6e11df8338b26e869a29b36f2c3e893";
      sha256 = "0h7dcrqyb5d67pxg4pmky4cw3qhl1z8z217nxnkvrwxfdl0khwn8";
    };
}
