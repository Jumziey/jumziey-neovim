{ pkgs }:
pkgs.mkYarnPackage {
  pname = "vimscript-language-server";
  version = "2.3.1";
  src = pkgs.fetchFromGitHub {
    owner = "iamcco";
    repo = "vim-language-server";
    rev = "f6e1808e441c64f47f6fb86886eb9ad5a4e74156";
    sha256 = "0qq8frdgbnwhrvmws28x2cq6im9fpqhr94r8ml4w427g4hs4mw1m";
  };
  # The answer lies in the missing out folder
  #postInstall = ''
  #mv out $out/
  #'';
}
