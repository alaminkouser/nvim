local lspconfig = require("lspconfig")

vim.diagnostic.config({ update_in_insert = true })

require("main.lspconfig-list.deno")

