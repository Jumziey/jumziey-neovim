{ pkgs }:
pkgs.vimUtils.buildVimPlugin {
    name = "local-plugin";
    src = ../local-plugin ;
}
