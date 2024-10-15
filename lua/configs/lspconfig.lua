local lspconfig = require('lspconfig')

--rust config
lspconfig.rust_analyzer.setup {
  settings = {
    ['rust-analyzer'] = {
			diagnostics = {
				enable = false;
			}
		},
  },
}

--ruby config
lspconfig.ruby_lsp.setup{}

--python config
lspconfig.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 100
        }
      }
    }
  }
}

--js config
lspconfig.ts_ls.setup{}
