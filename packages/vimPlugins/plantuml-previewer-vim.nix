{ pkgs }:
pkgs.vimUtils.buildVimPlugin {
  name = "plantuml-previewer.vim";
    src = pkgs.fetchFromGitHub {
      owner = "Jumziey";
      repo = "plantuml-previewer.vim";
      rev = "91d9071b9f500faf2be9bb46ad5727f4d53ecba7";
      sha256 = "0z4gv5ykwlihf6fr1zdw090l4q7ncnyhn0pyf1wk7bj35fn0a5bf";
    };
}
