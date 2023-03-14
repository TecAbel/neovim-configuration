local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end


vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- for lsp
  use 'williamboman/nvim-lsp-installer'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' 
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind.nvim'
  use 'glepnir/lspsaga.nvim'

  -- flutter
  use 'dart-lang/dart-vim-plugin'
  use 'thosakwe/vim-flutter'

  -- telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- utils
  use 'numToStr/Comment.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use { 'neoclide/coc.nvim', branch = 'release' }
  use 'alvan/vim-closetag'
  use 'jiangmiao/auto-pairs'
  use 'easymotion/vim-easymotion'
  use 'christoomey/vim-tmux-navigator'
  use 'tpope/vim-surround'
  use { 'mg979/vim-visual-multi', branch = 'master' }
  use 'danilamihailov/beacon.nvim'
  use 'mhinz/vim-startify'
  
  -- colors
  use 'ap/vim-css-color'
  use 'tpope/vim-fugitive'
  use 'ellisonleao/gruvbox.nvim'
  use 'xiyaowong/nvim-transparent'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'kyazdani42/nvim-web-devicons'

  -- lines
  use 'nvim-lualine/lualine.nvim'
  use 'akinsho/bufferline.nvim'

end)
