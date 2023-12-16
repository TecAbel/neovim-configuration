vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.o.termguicolors = true
vim.wo.number = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.title = true
vim.wo.signcolumn = 'yes'
vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.o.completeopt = 'menuone,noselect'
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }
-- Add asterisks in block comments

vim.cmd([[
set nohlsearch
set cursorline
]])

require('Comment').setup({})
