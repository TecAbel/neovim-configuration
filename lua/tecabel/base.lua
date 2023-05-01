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
vim.opt.formatoptions:append { 'r' }

vim.cmd([[
set nohlsearch
]])
vim.cmd([[

  " Fix Python files with autopep8 and yapf.
  " let b:ale_fixers = {
  "     \'python': ['black', 'isort', 'pyright'],
  "     \'javascript': ['prettier'],
  "     \'typescript': ['prettier'],
  "     \'typescriptreact': ['prettier'],
  "     \'html':['prettier']
  "     \}
  "
  " let g:ale_linter_aliases = {'typescriptreact': 'typescript'}
  "
  " let b:ale_linters = {
  "     \'python': ['flake8'],
  "     \'javascript': ['prettier', ],
  "     \'typescript': ['prettier', ],
  "     \'typescriptreact': ['prettier', ]
  "     \}
  "
  " let b:ale_linters = {
  "     \'python': ['flake8'],
  "     \'javascript': ['prettier', ],
  "     \'typescript': ['prettier', ],
  "     \'typescriptreact': ['prettier', ]
  "     \}
  " let g:ale_fix_on_save = 1
]])

require('Comment').setup({})
