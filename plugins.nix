{ pkgs }:
with pkgs.vimPlugins; [
  telescope-nvim
  telescope-recent-files
  material-vim
  nvim-lspconfig
  ultisnips
  fugitive
  fzf-vim
]
