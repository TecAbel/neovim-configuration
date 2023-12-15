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

-- Use a protected call so we don't error out on first use
local ok, lazy = pcall(require, "lazy")
if not ok then
  return
end


vim.opt.termguicolors = true


require("lazy").setup({
  {
    "folke/which-key.nvim",
    config = function()
      local wk = require("which-key")
      wk.setup()
      wk.register(
        {
          ["<leader>"] = {
            f = { name = "File" },
            d = { name = "Delete/Close" },
            q = { name = "Quit" },
            s = { name = "Search" },
            l = { name = "LSP" },
            u = { name = "UI" },
            b = { name = "Debugging" },
            g = { name = "Git" },
          }
        }
      )
    end
  },
  -- for lsp
  'williamboman/nvim-lsp-installer',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'jose-elias-alvarez/typescript.nvim',
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'folke/neodev.nvim',
      { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
      {
        "j-hui/fidget.nvim",
        tag = "legacy",
        event = "LspAttach",
      }
    },
  },
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'saadparwaiz1/cmp_luasnip',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  -- lazy.nvim
  {
    "folke/noice.nvim",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
  {
    'L3MON4D3/LuaSnip',
    version = '2.0.0',
    build = "make install_jsregexp"
  },
  'onsails/lspkind.nvim',
  {
    'nvimdev/lspsaga.nvim',
    event = "BufRead",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  'rafamadriz/friendly-snippets',
  'dense-analysis/ale',
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
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {}
  },
  { 'neoclide/coc.nvim', branch = "release" },
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
  { "catppuccin/nvim",   name = "catppuccin" },
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
      require('gitsigns').setup({
        signs = {
          add = { text = "▎" },
          change = { text = "▎" },
          delete = { text = "" },
          topdelete = { text = "" },
          changedelete = { text = "▎" },
          untracked = { text = "▎" },
        },
        numhl = true,
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
          delay = 1000,
          ignore_whitespace = false,
          virt_text_priority = 100,
        }
      })
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
