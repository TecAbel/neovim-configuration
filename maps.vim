" Mapping

let mapleader=" "
" set theme
set laststatus=2
"set keymap to nerdtree
" nnoremap gf :Files<CR>
nnoremap <Leader>ff :Ag<CR>
" nnoremap <C-n> :History<CR>
" Using Lua functions telescope
" nnoremap <leader>gf <cmd>lua require('telescope.builtin').find_files() hidden=true<cr>
nnoremap <leader>gf <cmd>Telescope find_files <cr>
:tnoremap <Esc> <C-\><C-n>

nnoremap <leader>di <cmd>Telescope diagnostics<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nmap <Leader>t :tabnew<CR>
nmap <Leader>s :vsplit<CR>
nmap <Leader>i :split<CR>
nnoremap tg gT

nnoremap <Leader>o :OR <CR> 
nnoremap <Leader>p :Prettier<CR>
nnoremap <Leader>ee :Startify<CR>
nnoremap <Leader>w :w<CR>

nnoremap <Leader>q :q<CR>
"quick comma
nnoremap <Leader>, $a,<Esc>
nmap <Leader><Leader>s <Plug>(easymotion-s2)
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
" :nmap <space>n <Cmd>CocCommand explorer<CR>
" :nmap <leader>n <Cmd>:Telescope file_browser default_selection_index=2<CR>
" nnoremap <leader>n :Explore<CR>
nmap <buffer> gD :tab LspDefinition<cr>
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
nnoremap <Leader>o :OR <CR>
" lsp saga mapping
nnoremap <leader>ca <cmd>Lspsaga code_action <cr>
nnoremap <leader>dn <cmd>Lspsaga diagnostic_jump_next <cr>
nnoremap <leader>dp <cmd>Lspsaga diagnostic_jump_prev <cr>
nnoremap K <cmd>Lspsaga hover_doc <cr>
nnoremap <leader>rn <cmd>Lspsaga rename <cr>
nnoremap gd <cmd>Lspsaga lsp_finder <cr> 
" buffer navigation and deletion
nmap ;n :bn<cr>
nmap ;p :bp<cr>
nmap ;d :%bd <bar> e# <cr>

