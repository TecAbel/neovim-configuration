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
  require('tecabel.plugins.lsp'),
  -- UI
  require('tecabel.plugins.code'),
  require('tecabel.plugins.git'),
  require('tecabel.plugins.ui'),
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
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "startify",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    },
    main = "ibl",
    dependencies = {
      {
        "echasnovski/mini.indentscope",
        version = false, -- wait till new 0.7.0 release to put it back on semver
        opts = {
          -- symbol = "▏",
          symbol = "│",
          options = { try_as_border = true },
        },
        init = function()
          vim.api.nvim_create_autocmd("FileType", {
            pattern = {
              "help",
              "alpha",
              "dashboard",
              "neo-tree",
              "Trouble",
              "trouble",
              "lazy",
              "mason",
              "notify",
              "toggleterm",
              "lazyterm",
            },
            callback = function()
              vim.b.miniindentscope_disable = true
            end,
          })
        end,
      }
    },
  },
  -- git
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
