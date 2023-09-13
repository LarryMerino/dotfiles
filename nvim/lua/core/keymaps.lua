vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.backspace = { 'indent', 'eol', 'start' }
vim.opt.cursorline = true
vim.opt.laststatus = 2
vim.opt.showcmd = true

-- use spaces for tabs and whatnot
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
