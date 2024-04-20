vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.wo.relativenumber = true
vim.cmd [[let &stc="%=%{v:relnum?v:relnum:v:lnum} "]]
vim.cmd [[set colorcolumn=80]]
vim.cmd [[set cmdheight=0]]
vim.cmd [[set whichwrap+=<,>]]
