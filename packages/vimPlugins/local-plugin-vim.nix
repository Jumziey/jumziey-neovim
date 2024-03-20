{ pkgs }:
pkgs.vimUtils.buildVimPlugin {
    name = "local-plugin-vim";
    src = ../local-plugin ;
}
