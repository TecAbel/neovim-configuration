local keymap = vim.keymap
vim.g.mapleader = ' '

keymap.set('n', '<Leader>o', ' :OR <CR>', {
  noremap = true
})
keymap.set('n', '<Leader>p', ' gg=G', {
  noremap = true
})
keymap.set('n', '<Leader>w', ' :w<CR>', {
  noremap = true
})
keymap.set('n', '<Leader>q', ' :q<CR>', {
  noremap = true
})
keymap.set('n', '<Leader>,', ' $a,<Esc>', {
  noremap = true
})
keymap.set('n', '<Leader>;', ' $a;<Esc>', {
  noremap = true
})
keymap.set('n', 's', ' <Plug>(easymotion-s2)', {
  noremap = true
})
keymap.set('n', ';da', ' :%bd <bar> e# <cr>', {
  noremap = true
})
keymap.set('n', ';dd', ' :bd <cr>', {
  noremap = true
})

keymap.set('n', 'gd', ' <cmd>Lspsaga lsp_finder <cr> ', {
  noremap = true
})
keymap.set('n', 'gp', ' <cmd>Lspsaga peek_definition <cr>', {
  noremap = true
})
keymap.set('n', 'ge', ' <cmd>Lspsaga show_line_diagnostics <cr>', {
  noremap = true
})



-- Telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>gf', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- vimscript
vim.cmd([[
let mapleader=" "
imap <Esc> <C-c>
nnoremap tg gT
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
" autoclose-tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js, *.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.tsx'
let g:closetag_regions =  {
\ 'typescript.tsx': 'jsxRegion,tsxRegion',
\ 'javascript.jsx': 'jsxRegion',
\ }
]])
