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
imap <Esc> <C-c>

nnoremap <leader>di <cmd>Telescope diagnostics<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nmap <Leader>t :tabnew<CR>
nmap <Leader>s :vsplit<CR>
nmap <Leader>i :split<CR>
nnoremap tg gT

nnoremap <Leader>o :OR <CR> 
nnoremap <Leader>p gg=G 
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

nmap <buffer> gD :tab LspDefinition<cr>
nnoremap <Leader>o :OrganizeImports <CR>
" lsp saga mapping
nnoremap <leader>ca <cmd>Lspsaga code_action <cr>
nnoremap <leader>dn <cmd>Lspsaga diagnostic_jump_next <cr>
nnoremap <leader>dp <cmd>Lspsaga diagnostic_jump_prev <cr>
nnoremap K <cmd>Lspsaga hover_doc <cr>
nnoremap <leader>rn <cmd>Lspsaga rename <cr>
nnoremap gd <cmd>Lspsaga lsp_finder <cr> 
nnoremap gp <cmd>Lspsaga preview_definition <cr>
nnoremap ge <cmd>Lspsaga show_line_diagnostics <cr>
" buffer navigation and deletion
nmap ;da :%bd <bar> e# <cr>
nmap ;dd :bd <cr>

" imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
" let g:copilot_no_tab_map = v:true
" for lint Ale
" need to install pip and pip install flake and black
let g:ale_linter_aliases = {'typescriptreact': 'typescript'}
let b:ale_linters = {
      \'python': ['flake8'],
      \'javascript': ['prettier', 'eslint'],
      \'typescript': ['prettier', 'eslint'],
      \'typescriptreact': ['prettier', 'eslint']
      \}
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = {
      \'python': ['black', 'isort'],
      \'javascript': ['prettier'],
      \'typescript': ['prettier'],
      \'typescriptreact': ['prettier']
      \}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
" exec flutter
nnoremap fr <cmd>FlutterRun -d linux <cr>
