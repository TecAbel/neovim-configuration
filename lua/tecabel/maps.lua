local keymap = vim.keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '

keymap.set('n', '<Leader>o', ' <cmd>OR <CR>', opts)
keymap.set('n', '<Leader>p', ' gg=G', opts)
keymap.set('n', '<Leader>w', ' :w<CR>', opts)
keymap.set('n', '<Leader>q', ' :q<CR>', opts)
keymap.set('n', '<Leader>,', ' $a,<Esc>', opts)
keymap.set('n', '<Leader>;', ' $a;<Esc>', opts)
keymap.set('n', 's', ' <Plug>(easymotion-s2)', opts)
keymap.set('n', ';da', ' :%bd <bar> e# <cr>', opts)
keymap.set('n', ';dd', ' :bd <cr>', opts)
keymap.set('n', 'gd', ' <cmd>Lspsaga lsp_finder <cr> ', opts)
keymap.set('n', 'gp', ' <cmd>Lspsaga peek_definition <cr>', opts)
keymap.set('n', 'ge', ' <cmd>Lspsaga show_line_diagnostics <cr>', opts)
keymap.set('n', 'ca', ' <cmd>Lspsaga code_action <cr>', opts)
keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
keymap.set("n", "rn", "<cmd>Lspsaga rename<CR>", opts)
keymap.set('n', 'ee', '<cmd>Startify <cr>', opts)
keymap.set('n', 'gr', vim.lsp.buf.references, opts)
keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, opts)
keymap.set('n', '<leader>di', '<cmd>Telescope diagnostics<cr>', opts)
keymap.set('n', '<Leader>t', '<cmd>tabnew<cr>', opts)
keymap.set('n', '<Leader>s', '<cmd>vsplit<cr>', opts)
keymap.set('n', '<Leader>i', '<cmd>split<cr>', opts)
keymap.set('n', '<leader>ll', '<Cmd>CocCommand explorer --toggle<CR>', opts)
keymap.set('n', '<leader>gb', '<cmd>Git blame<cr>', opts)


-- Telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>gf', builtin.find_files, opts)
keymap.set('n', '<leader>fg', builtin.live_grep, opts)
keymap.set('n', '<leader>fb', builtin.buffers, opts)
keymap.set('n', '<leader>fh', builtin.help_tags, opts)

-- vimscript
vim.cmd([[
let mapleader=" "
imap <Esc> <C-c>
nnoremap tg gT
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
command! -nargs=0 OR   :silent call CocAction('runCommand', 'editor.action.organizeImport')
" autoclose-tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js, *.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.tsx'
let g:closetag_regions =  {
\ 'typescript.tsx': 'jsxRegion,tsxRegion',
\ 'javascript.jsx': 'jsxRegion',
\ }
]])
