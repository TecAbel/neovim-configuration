syntax on
set number
set mouse=a
set sw=2
set expandtab
set smartindent
set numberwidth=1
set ignorecase
set nohlsearch
set nocompatible
set clipboard=unnamedplus
" unicode characters in the file autoload/float.vim
set encoding=UTF-8

" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
set t_Co=256  " vim-monokai now only support 256 colours in terminal.

" for better navigation
nnoremap <C-j> 10j
nnoremap <C-k> 10k


inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

call plug#begin()
"for commentary
" gcc one line normal mode
" visual mode gb 
" to solect block V %

Plug 'numToStr/Comment.nvim'

" for better colors
Plug 'sheerun/vim-polyglot'
Plug 'crusoexia/vim-monokai'

"  typescript 
"  :CocInstall coc-tsserver :CocInstall coc-css
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"file explorer choco install ag
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'scrooloose/nerdtree-project-plugin'
"utils
Plug 'jiangmiao/auto-pairs'
" closetag
Plug 'alvan/vim-closetag'
"files choco install fzf and ag

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
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
Plug 'tpope/vim-surround'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
" status line
 Plug 'itchyny/lightline.vim'
 Plug 'itchyny/vim-gitbranch'
 
" git line
 Plug 'mhinz/vim-signify'
" for project open
Plug 'mhinz/vim-startify'
call plug#end()
" coc config
colorscheme monokai

" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree
" function! StartUp()
"     if 0 == argc()
"         NERDTree
"     end
" endfunction

" autocmd VimEnter * call StartUp()
" for css autocomplete
autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255

"Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


let mapleader=" "
" set theme
set bg=dark
let g:gruvbox_contrast_dark='hard'
set laststatus=2
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" set t_Co=256  " vim-monokai now only support 256 colours in terminal.
set termguicolors


inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" coc config
colorscheme monokai

" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree

" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


let mapleader=" "
" set theme
set bg=dark
let g:gruvbox_contrast_dark='hard'
set laststatus=2
"set keymap to nerdtree
nnoremap <Leader>nn :NERDTreeToggle<CR>
nnoremap gf :Files<CR>
nnoremap <Leader>ff :Ag<CR>
nnoremap <C-n> :History<CR>
:let g:NERDTreeWinSize=60
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
nmap <Leader>t :tabnew<CR>
nmap <Leader>s :vsplit<CR>
" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-k> coc#refresh()

" nnoremap <C-O> :Prettier<CR>
nnoremap <Leader>o :OR <CR> \| :Prettier<CR>
nnoremap <Leader>w :w<CR>

nnoremap <Leader>q :q<CR>
"quick semi
nnoremap <Leader>; $a;<Esc>
"for definitions
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
" - To learn more about preview window options, see `--preview-window` section of `man fzf`.
nmap <Leader><Leader>s <Plug>(easymotion-s2)


let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/'] 
let g:coc_global_extensions = ['coc-tsserver', 'coc-css', 'coc-html', 'coc-angular', 'coc-emmet', 'coc-html-css-support']
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
" muticursors 
let g:VM_maps = {}
" space and j, start multicursors, next item use n N for previus
let g:VM_maps['Find Under'] = '<Leader>j'

" for css autocomplete and scss before use :CocInstall coc-css
autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
autocmd FileType scss setl iskeyword+=@-@
set iskeyword+=-
" status bar
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

let NERDTreeDirArrowExpandable = "▶"
let NERDTreeDirArrowCollapsible = "▼"


" Comment.nvim
lua require('Comment').setup()
let g:nerdtree_vis_confirm_open = 0

" for rooter
" Everything (default)
let g:rooter_targets = '/,*'

" All files
let g:rooter_targets = '*'

" YAML files
let g:rooter_targets = '*.yml,*.yaml'

" Directories and YAML files
let g:rooter_targets = '/,*.yml,*.yaml'
