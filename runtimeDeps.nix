{ pkgs }:
with pkgs; [
  lazygit
  xclip
  fzf
  helm-ls
  # packages with results in /lib/node_modules/.bin must come at the end
  nodePackages.typescript
  nodePackages.typescript-language-server
]
