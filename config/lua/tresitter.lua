require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
	indent = {
      enable = true
  },
}
vim.treesitter.language.register("yaml","kustomize")
vim.treesitter.language.register("yaml","kubernetes")
