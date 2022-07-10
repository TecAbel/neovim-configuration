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
set encoding=UTF-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set t_Co=256
set termguicolors



call plug#begin()
"for commentary
" gcc one line normal mode
" visual mode gb 
" to solect block V %

Plug 'numToStr/Comment.nvim'

" for better colors
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'frazrepo/vim-rainbow'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"  typescript 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"file explorer choco install ag
"utils
Plug 'jiangmiao/auto-pairs'
" closetag
Plug 'alvan/vim-closetag'
"files choco install fzf and ag

" finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" init.vim
Plug 'lukas-reineke/indent-blankline.nvim'
" easymotion
Plug 'easymotion/vim-easymotion'
" navigation tabs
Plug 'christoomey/vim-tmux-navigator'
" typescript suppport
" Multi cursor
Plug 'tpope/vim-surround'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescriptreact', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" for project open
Plug 'mhinz/vim-startify'
" for html angular template
Plug 'curist/vim-angular-template'
"css colors
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'

call plug#end()
let g:dracula_italic = 0
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

let g:airline_theme = 'dracula'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1

" for css autocomplete
autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255

"Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


let mapleader=" "
" set theme
" let g:gruvbox_contrast_dark='hard'


inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"



let mapleader=" "
" set theme
set laststatus=2

nnoremap <leader>n :Explore <cr>
nnoremap <leader>di <cmd>Telescope diagnostics<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nmap <Leader>t :tabnew<CR>
nmap <Leader>s :vsplit<CR>
nmap <Leader>i :split<CR>
nnoremap tg gT
" Use <c-space> to trigger completion.

command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
nnoremap <Leader>p :Prettier<CR>
" format on save
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
nnoremap <Leader>ee :Startify<CR>
nnoremap <Leader>w :w<CR>

nnoremap <Leader>q :q<CR>
"quick semi
nnoremap <Leader>; $a;<Esc>
"for coc config
nnoremap <Leader>o :OR <CR> 
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
inoremap <silent><expr> <C-k> coc#refresh()
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
let g:coc_global_extensions = ['coc-tsserver', 'coc-css', 'coc-html', 'coc-html-css-support', 'coc-explorer', 'coc-angular', 'coc-emmet', 'coc-angular', 'coc-lists']




nmap <Leader><Leader>s <Plug>(easymotion-s2)


set guifont=JetBrainsMono_NF:h13

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" muticursors 
let g:VM_maps = {}
" space and j, start multicursors, next item use n N for previus
let g:VM_maps['Find Under'] = '<Leader>j'

" for css autocomplete and scss before use :CocInstall coc-css
autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
autocmd FileType scss setl iskeyword+=@-@
set iskeyword+=-




" Comment.nvim
lua require('Comment').setup()

" telescope
function! GetNVimVersion()
    redir => s
    silent! version
    redir END
    return matchstr(s, 'NVIM v\zs[^\n]*')
endfunction
let g:airline_powerline_fonts = 1

" Startify order
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
" autoclose-tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.tsx'
"for treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "lua", "typescript", "html", "json", "comment", "vim" },


  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
EOF
