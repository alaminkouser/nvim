vim.cmd [[packadd nvim-lspconfig]]
vim.cmd [[packadd nvim-cmp]]
vim.cmd [[packadd cmp-nvim-lsp]]

require("main.lspconfig")
require("main.cmp")
