# vim: ft=lua
{ pkgs }:
''
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<C-i>', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', '<C-g>', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-w>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<C-a>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
end

-- See: https://github.com/neovim/nvim-lspconfig/issues/2252
-- Needs to earlier say helm
vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {
  pattern = "*/templates/*.{yaml,yml},*/templates/*.tpl,*.gotmpl,helmfile*.{yaml,yml}",
  callback = function()
    vim.opt_local.filetype = 'helm'
  end
})

require'lspconfig'.helm_ls.setup{
  filetypes = {
    "helm",
  },
  on_attach = on_attach,
}

local nvim_lsp = require("lspconfig")
nvim_lsp.tsserver.setup({
  on_attach = on_attach,
  init_options = {
    tsserver = {
      path = "${pkgs.nodePackages.typescript}/lib/node_modules/typescript/lib",
    },
  },
})

require('lspconfig').yamlls.setup {
  on_attach = on_attach,
  filetypes = {
    "kustomize"
  },
  settings = {
    yaml = {
      schemas = {
        ["https://raw.githubusercontent.com/SchemaStore/schemastore/master/src/schemas/json/kustomization.json"] = "/*.yaml",
      },
    },
  }
}

require('lspconfig').yamlls.setup {
  on_attach = on_attach,
  filetypes = {
    "yaml"
  },
}

require'lspconfig'.kotlin_language_server.setup{
  on_attach = on_attach,
  filetypes = {
    "kotlin",
  },
}

require'lspconfig'.starlark_rust.setup{
  on_attach = on_attach,
}

require'lspconfig'.vimls.setup{
  on_attach = on_attach,
}
''
