syntax on
set number
set mouse=a
set sw=2
set expandtab
set autoindent
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
set lazyredraw
set smarttab
set ai "Auto indent
set si "Smart indent

color desert
set cursorline
" hi CursorLine term=bold cterm=bold guibg=Grey40
" hi Normal guibg=NONE gui=NONE

set cmdheight=2
set updatetime=300
set t_Co=256
" set termguicolors "only for windows terminal
set autoread
set cmdheight=1
" set foldmethod=syntax

set completeopt=menu,menuone,noinsert,noselect
" imports
runtime ./plugin.vim
runtime ./maps.vim
lua require('Comment').setup()
" end imports

" set theme
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_contrast = "high"
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
else
  let g:dracula_italic = 0
  colorscheme dracula
  " hi Normal guibg=NONE ctermbg=NONE
endif
" end set theme

let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/'] 


" set guifont=JetBrainsMono_NF:h13

" muticursors 
let g:VM_maps = {}
" space and j, start multicursors, next item use n N for previus
let g:VM_maps['Find Under'] = '<Leader>j'


" Comment.nvim


" telescope
function! GetNVimVersion()
  redir => s
  silent! version
  redir END
  return matchstr(s, 'NVIM v\zs[^\n]*')
endfunction


" autoclose-tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.tsx'
