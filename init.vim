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
set termguicolors "only for windows
set autoread
" set foldmethod=syntax

call plug#begin()
"for commentary
" gcc one line normal mode
" visual mode gb 
" to solect block V %

Plug 'numToStr/Comment.nvim'

" for better colors
" Plug 'morhetz/gruvbox' 
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" closetag
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
" Plug 'github/copilot.vim'
" finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" init.vim
Plug 'lukas-reineke/indent-blankline.nvim'
" easymotion
Plug 'easymotion/vim-easymotion'
" navigation tabs
Plug 'christoomey/vim-tmux-navigator'
" Multi cursor
Plug 'tpope/vim-surround'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'python', 'typescriptreact', 'lua', 'vim', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
 
" git line
Plug 'mhinz/vim-signify'
" for project open
Plug 'mhinz/vim-startify'
" for html angular template
Plug 'ryanoasis/vim-devicons'
"css colors
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
"for LSP
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp' 
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'L3MON4D3/LuaSnip'
Plug 'onsails/lspkind.nvim'

" on save
Plug 'dense-analysis/ale'
" icons
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

let mapleader=" "
" set theme
let g:dracula_italic = 0
colorscheme dracula
" let g:gruvbox_contrast_dark = 'hard'
hi Normal guibg=NONE ctermbg=NONE



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
"quick semi
nnoremap <Leader>; $a;<Esc>
nmap <Leader><Leader>s <Plug>(easymotion-s2)


let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/'] 
let g:coc_global_extensions = ['coc-explorer', 'coc-lists']

:tnoremap <Esc> <C-\><C-n>

set guifont=JetBrainsMono_NF:h13

" muticursors 
let g:VM_maps = {}
" space and j, start multicursors, next item use n N for previus
let g:VM_maps['Find Under'] = '<Leader>j'

let g:airline_theme = 'dracula'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1

" Comment.nvim
lua require('Comment').setup()
lua require('init')


" telescope
function! GetNVimVersion()
    redir => s
    silent! version
    redir END
    return matchstr(s, 'NVIM v\zs[^\n]*')
endfunction
let g:airline_powerline_fonts = 1
" :nmap <space>n <Cmd>CocCommand explorer<CR>
nnoremap <leader>n :Explore<CR>
nmap <buffer> gD :tab LspDefinition<cr>
" for github copilot
" imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
        " let g:copilot_no_tab_map = v:true
" luasnip
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
" coc disable suggestions
autocmd FileType markdown let b:coc_suggest_disable = 1
" surround
if !exists("g:surround_no_mappings") || ! g:surround_no_mappings
  nmap ds  <Plug>Dsurround
  nmap cs  <Plug>Csurround
  nmap ys  <Plug>Ysurround
  nmap yS  <Plug>YSurround
  nmap yss <Plug>Yssurround
  nmap ySs <Plug>YSsurround
  nmap ySS <Plug>YSsurround
  xmap S   <Plug>VSurround
  xmap gS  <Plug>VgSurround
  if !exists("g:surround_no_insert_mappings") || ! g:surround_no_insert_mappings
    if !hasmapto("<Plug>Isurround","i") && "" == mapcheck("<C-S>","i")
      imap    <C-S> <Plug>Isurround
    endif
    imap      <C-G>s <Plug>Isurround
    imap      <C-G>S <Plug>ISurround
  endif
endif
" autocmd FileType typescript JsPreTmpl html
" autocmd FileType typescript syn clear foldBraces
" for syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" let g:ale_fix_on_save = 1
" let g:ale_fixers = {
" \   'javascript': ['eslint', 'prettier'],
" \   'typescript': ['eslint', 'prettier'],
" \   'typescriptreact': ['eslint', 'prettier'],
" \   'html': ['eslint', 'prettier'],
" \   'python': ['prettier'],
" \}
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
" startyfy
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
" autoclose-tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.tsx'
