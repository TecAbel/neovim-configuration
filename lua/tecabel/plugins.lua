local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({

    "git",
    "clone",

    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
  -- performance
  'lewis6991/impatient.nvim',
  -- for lsp
  'williamboman/nvim-lsp-installer',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'jose-elias-alvarez/null-ls.nvim',
  'jose-elias-alvarez/typescript.nvim',
  'MunifTanjim/prettier.nvim',
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'saadparwaiz1/cmp_luasnip',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'L3MON4D3/LuaSnip',
  'onsails/lspkind.nvim',
  {
    'nvimdev/lspsaga.nvim',
    event = "BufRead",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  'rafamadriz/friendly-snippets',
  -- 'dense-analysis/ale',
  -- lsp database
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      'tpope/vim-dadbod',
      'tpope/vim-dotenv',
      'kristijanhusak/vim-dadbod-completion',
    }
  },
  -- flutter
  'dart-lang/dart-vim-plugin',
  'thosakwe/vim-flutter',
  -- telescope
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',
  'nvim-telescope/telescope-file-browser.nvim',
  -- utils
  {
    'numToStr/Comment.nvim', opts = {}
  },
  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    opts = {
      -- show_trailing_blankline_indent = false,
    },
  },
  -- { 'neoclide/coc.nvim', branch = "release" },
  'alvan/vim-closetag',
  {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup {}
    end
  },
  'easymotion/vim-easymotion',
  'christoomey/vim-tmux-navigator',
  'tpope/vim-surround',
  'mg979/vim-visual-multi',
  'danilamihailov/beacon.nvim',
  'mhinz/vim-startify',
  -- colors
  'ap/vim-css-color',
  'tpope/vim-fugitive',
  'ellisonleao/gruvbox.nvim',
  { "catppuccin/nvim", name = "catppuccin" },
  'xiyaowong/nvim-transparent',
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end
  },
  -- 'nvim-treesitter/nvim-treesitter-context',
  -- 'kyazdani42/nvim-web-devicons',
  -- git
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },
  -- lines
  'nvim-lualine/lualine.nvim',
  'akinsho/bufferline.nvim',
}, {
  root = vim.fn.stdpath("data") .. "/lazy",                 -- directory where plugins will be installed
  lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json", -- lockfile generated after running update.
  install = {
    -- install missing plugins on startup. This doesn't increase startup time.
    missing = true,
  },
  checker = {
    -- automatically check for plugin updates
    enabled = true,
    concurrency = nil, ---@type number? set to 1 to check for updates very slowly
    notify = true, -- get a notification when new updates are found
  },
  performance = {
    cache = {
      enabled = true,
    },
    reset_packpath = true, -- reset the package path to improve startup time
    rtp = {
      reset = true,        -- reset the runtime path to $VIMRUNTIME and your config directory
      ---@type string[]
      paths = {},          -- add any custom paths here that you want to includes in the rtp
      ---@type string[] list any plugins you want to disable here
      disabled_plugins = {
        -- "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",

        -- "tarPlugin",
        -- "tohtml",
        -- "tutor",
        -- "zipPlugin",
      },
    },
  },
  state = vim.fn.stdpath("state") .. "/lazy/state.json", -- state info for checker and other things
})
