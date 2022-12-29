
call plug#begin()
"for commentary
" gcc one line normal mode
" visual mode gb 
" to solect block V %

Plug 'numToStr/Comment.nvim'

" for better colors
" Plug 'morhetz/gruvbox' 
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tjdevries/colorbuddy.nvim'
" Plug 'svrana/neosolarized.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'curist/vim-angular-template'
" Plug 'nvim-treesitter/nvim-treesitter-angular'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" closetag
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
" Plug 'github/copilot.vim'
" finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

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
Plug 'nvim-lualine/lualine.nvim'
 
" git line
Plug 'lewis6991/gitsigns.nvim'
" for project open
Plug 'mhinz/vim-startify'
" Plug 'ryanoasis/vim-devicons'
"css colors
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
"for LSP
Plug 'williamboman/nvim-lsp-installer'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp' 
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'L3MON4D3/LuaSnip'
Plug 'onsails/lspkind.nvim'
Plug 'glepnir/lspsaga.nvim'

" on save
Plug 'dense-analysis/ale'
" icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

" performance
Plug 'lewis6991/impatient.nvim'
" flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
call plug#end()
