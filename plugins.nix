{ pkgs }:
with pkgs.vimPlugins; [
  material-vim
  nvim-lspconfig
  ultisnips
  fugitive
  fzf-vim
  (nvim-treesitter.withPlugins (
    plugins: with plugins; [
      angular
      jsonnet
      bash
      c
      c_sharp
      cmake
      cpp
      css
      diff
      dockerfile
      dot
      git_rebase
      gitattributes
      gitcommit
      gitignore
      go
      gomod
      gosum
      gowork
      java
      javascript
      typescript
      jq
      jsdoc
      http
      json
      make
      markdown
      markdown_inline
      proto
      python
      regex
      sql
      terraform
      yaml
      toml
      vim
      nix
      python
      helm
      kotlin
      starlark
    ]
  ))
  nvim-treesitter-context
  nvim-treesitter-refactor
  nvim-treesitter-textobjects
  custom-hop-vim
  plantuml-previewer-vim
  vimwiki
  vim-airline
  vim-airline-themes
  nvim-cmp
  cmp-nvim-lsp
]
