local cmp = require('cmp')

cmp.setup({
	enabled = true,
	sources = {
		{
			name = 'nvim_lsp'
		}
	}
})


local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
require('lspconfig')['gopls'].setup {
    on_attach=on_attach,
    capabilities = capabilities,
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
          shadow = true,
        },
        staticcheck = true,
      },
    },
    init_options = {
      usePlaceholders = false,
    }
  }

