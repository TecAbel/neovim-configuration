local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap.set('n', '<Leader>o', ' <cmd>:TypescriptOrganizeImports <CR> <bar> <cmd>:TypescriptRemoveUnused <CR>', opts)
keymap.set('n', '<Leader>p', ' <cmd>Prettier <cr>', opts)
keymap.set('n', '<Leader>w', ' <cmd>w<CR>', opts)
keymap.set('n', '<Leader>q', ' <cmd>q<CR>', opts)
-- keymap.set('n', '<Leader>,', ' $a,<Esc>', opts)
-- keymap.set('n', '<Leader>;', ' $a;<Esc>', opts)
keymap.set('n', 's', ' <Plug>(easymotion-s2)', opts)
-- keymap.set('n', ';da', ' <cmd>bufdo bd<cr>', opts)
keymap.set('n', '<leader>rl', '<cmd>edit!<cr>')
keymap.set('n', ';dd', ' <cmd>bd <cr>', opts)
keymap.set('n', 'gd', ' <cmd>Lspsaga goto_definition<cr> ')
keymap.set('n', '<leader>gt', ' <cmd>Lspsaga term_toggle<cr> ')
keymap.set('n', 'gp', ' <cmd>Lspsaga peek_definition<cr>')
keymap.set('n', 'ge', ' <cmd>Lspsaga show_line_diagnostics<cr>')
keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
keymap.set({ "n" }, "K", "<cmd>Lspsaga hover_doc<CR>")
keymap.set("n", "rn", "<cmd>Lspsaga rename ++project<CR>")
keymap.set('n', 'ee', '<cmd>Startify <cr>', opts)
keymap.set('n', 'gr', vim.lsp.buf.references, opts)
keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, opts)
keymap.set('n', '<leader>di', '<cmd>Telescope diagnostics initial_mode=normal prompt_prefix=🔍<cr>', opts)
keymap.set('n', '<leader>:', '<cmd>Telescope commands prompt_prefix=🔍 initial_mode=normal<cr> ', opts)
keymap.set('n', '<leader>n', '<cmd>Telescope file_browser path=%:p:h select_buffer=true initial_mode=normal prompt_prefix=🔍<cr>', opts)
keymap.set('n', '<Leader>t', '<cmd>tabnew<cr>', opts)
keymap.set('n', '<Leader>s', '<cmd>vsplit<cr>', opts)
keymap.set('n', '<Leader>i', '<cmd>split<cr>', opts)
keymap.set('n', '<leader>ll', '<cmd>:Explore <cr>', opts)
keymap.set('n', '<leader>gb', '<cmd>Git blame<cr>', opts)
-- fire database connections
keymap.set('n', '<leader>db', '<cmd>DBUI<cr>', opts)


-- Telescope
-- local builtin = require('telescope.builtin')
keymap.set('n', '<leader>gf', '<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍 <cr>',
  opts)
keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep prompt_prefix=🔍 <cr>', opts)
keymap.set('n', '<leader>b', '<cmd>Telescope buffers initial_mode=normal prompt_prefix=🔍 <cr>', opts)
keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags prompt_prefix=🔍 <cr>', opts)
keymap.set('n', '<leader>gc', '<cmd>Telescope git_commits prompt_prefix=🔍 <cr>', opts)

-- vimscript
vim.cmd([[
let mapleader=" "
imap <Esc> <C-c>
nnoremap tg gT
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
" autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
" command! -nargs=0 OR   :silent call CocAction('runCommand', 'editor.action.organizeImport')
nnoremap <Leader>, $a,<Esc>
nnoremap <Leader>; $a;<Esc>
nnoremap ;dd :bd<cr>
nnoremap ;da :%bd <bar> e#<cr>
" copy on clipboard filename
nnoremap <Leader>yf :let @+ = expand("%:t")<cr>
" copy on clipboard fullpath and filename
nnoremap <Leader>yp :let @+ = expand("%")<cr>
" copy on line on clipboard  
nnoremap <Leader>Y "+y<CR>
let g:netrw_liststyle = 3
" autoclose-tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.tsx'
let g:closetag_regions =  {
\ 'typescript.tsx': 'jsxRegion,tsxRegion',
\ 'javascript.jsx': 'jsxRegion',
\ }
]])
