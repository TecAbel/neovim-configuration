syntax on
set number
set mouse=a
set sw=2
set expandtab
set smartindent
set numberwidth=1
set ignorecase
set clipboard=unnamedplus
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


call plug#begin()
" for better colors
Plug 'sheerun/vim-polyglot'
"  typescript 
"  :CocInstall coc-tsserver :CocInstall coc-css :CocInstall coc-angular :CocInstall coc-html
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'navarasu/onedark.nvim'
" for theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" file explorer choco install ag
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
" closetag
Plug 'alvan/vim-closetag'
"files choco install fzf and ag

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" init.vim
Plug 'lukas-reineke/indent-blankline.nvim'
" easymotion
Plug 'easymotion/vim-easymotion'
" navigation tabs
Plug 'christoomey/vim-tmux-navigator'
" typescript suppport
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
" Multi cursor

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
call plug#end()
" coc config
" Add `:OR` command for organize imports of the current buffer.


let mapleader=" "
" set theme
colorscheme onedark 
set bg=dark
let g:gruvbox_contrast_dark='hard'
set laststatus=2
"set keymap to nerdtree
nnoremap <S-n> :NERDTreeToggle<CR>
nnoremap <Leader>n :Files<CR>
nnoremap <C-f> :Ag<CR>
nnoremap <C-n> :History<CR>
:let g:NERDTreeWinSize=60
let NERDTreeQuitOnOpen=1
nmap <Leader>t :tabnew<CR>

" nnoremap <C-O> :Prettier<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
"quick semi
nnoremap <Leader>; $a;<Esc>
"for definitions
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
" - To learn more about preview window options, see `--preview-window` section of `man fzf`.
nmap <Leader>s <Plug>(easymotion-s2)


let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/'] 
let g:coc_global_extensions = ['coc-tsserver']
:set number relativenumber
:set nu rnu
:set guifont=Comic\ Mono:h15

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
nnoremap <Leader>o :OR <CR> \| :Prettier<CR>
" muticursors 
let g:VM_maps = {}
" space and j, start multicursors, next item use n N for previus
let g:VM_maps['Find Under'] = '<Leader>j'

" for css autocomplete and scss before use :CocInstall coc-css
autocmd FileType scss setl iskeyword+=@-@





















================ for mac use hyper
syntax on
set number
set mouse=a
set sw=2
set expandtab
set smartindent
set numberwidth=1
set ignorecase
set clipboard=unnamedplus
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


call plug#begin()
" for better colors
Plug 'sheerun/vim-polyglot'
"  typescript 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'navarasu/onedark.nvim'
" for theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" file explorer choco install ag
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
" closetag
Plug 'alvan/vim-closetag'
"files choco install fzf and ag

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" init.vim
Plug 'lukas-reineke/indent-blankline.nvim'
" easymotion
Plug 'easymotion/vim-easymotion'
" navigation tabs
Plug 'christoomey/vim-tmux-navigator'
" typescript suppport
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
" Multi cursor

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
call plug#end()
" coc config
" Add `:OR` command for organize imports of the current buffer.


let mapleader=" "
" set theme
colorscheme onedark 
set bg=dark
let g:gruvbox_contrast_dark='hard'
set laststatus=2
"set keymap to nerdtree
nnoremap <S-n> :NERDTreeToggle<CR>
nnoremap <Leader>n :Files<CR>
nnoremap <C-f> :Ag<CR>
nnoremap <C-n> :History<CR>

" nnoremap <C-O> :Prettier<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
"quick semi
nnoremap <Leader>; $a;<Esc>
"for definitions
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
" - To learn more about preview window options, see `--preview-window` section of `man fzf`.
nmap <Leader>s <Plug>(easymotion-s2)


let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/'] 
let g:coc_global_extensions = ['coc-tsserver']
:set number relativenumber
:set nu rnu
:set guifont=Comic\ Mono:h15

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
nnoremap <Leader>o :OR <CR> \| :Prettier<CR>
" muticursors 
let g:VM_maps = {}
let g:VM_maps['Find Under'] = '<Leader>e'
