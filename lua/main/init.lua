vim.cmd [[packadd nvim-lspconfig]]
vim.cmd [[packadd nvim-cmp]]
vim.cmd [[packadd cmp-nvim-lsp]]
vim.cmd [[packadd cmp-buffer]]
vim.cmd [[packadd cmp-path]]
vim.cmd [[packadd cmp-cmdline]]
vim.cmd [[packadd vim-vsnip]]
vim.cmd [[packadd vim-vsnip-integ]]
vim.cmd [[packadd neovim]]

require("main.lspconfig")
require("main.cmp")
require("main.style")
