
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