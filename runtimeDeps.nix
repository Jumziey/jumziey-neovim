{ pkgs }:
with pkgs; [
  lazygit
  xclip
  fzf
  helm-ls
  yaml-language-server
  kotlin
  kotlin-language-server
  gradle
  # packages with results in /lib/node_modules/.bin must come at the end
  nodePackages.typescript
  nodePackages.typescript-language-server
]
