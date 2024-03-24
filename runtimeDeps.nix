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
  starlark-rust
  # packages with results in /lib/node_modules/.bin must come at the end
  vimscript-language-server
  nodePackages.typescript
  nodePackages.typescript-language-server
]
