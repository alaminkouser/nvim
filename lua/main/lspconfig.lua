local lspconfig = require("lspconfig")

vim.diagnostic.config({ update_in_insert = true })

require("main.lspconfig-list.deno")
require("main.lspconfig-list.texlab")
require("main.lspconfig-list.marksman")
require("main.lspconfig-list.tsserver")
require("main.lspconfig-list.zig")
