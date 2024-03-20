if exists('b:did_after_ftplugin')
	finish
endif
let b:did_after_ftplugin = 1

setlocal tabstop=2 sts=2 sw=2 expandtab

lua << EOF
local yaml_lsp = require("lspconfig")
yaml_lsp.yamlls.setup{
  settings = {
    yaml = {
      schemas = {
        ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.1-standalone-strict/all.json"] = "/*.k8s.yaml",
      },
    },
  }
}
EOF
