if exists('b:did_after_ftplugin')
	finish
endif
let b:did_after_ftplugin = 1

lua << EOF
require('lspconfig').yamlls.setup {
  settings = {
    yaml = {
      schemas = {
        ["https://raw.githubusercontent.com/SchemaStore/schemastore/master/src/schemas/json/kustomization.json"] = "/*.yaml",
      },
    },
  }
}
EOF
