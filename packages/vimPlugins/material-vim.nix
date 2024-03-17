{ pkgs }:
pkgs.vimUtils.buildVimPlugin {
  name = "material.vim";
  src = pkgs.fetchFromGitHub {
    owner = "marko-cerovac";
    repo = "material.nvim";
    rev = "1804e517ceb0fce958a9fabaa94c9a6e09d54b8f";
    sha256 = "1x4cqwy9anirl8y4lby1rdnxblypi256qdpcdd8wccfk6jsvd74r";
  };
}
