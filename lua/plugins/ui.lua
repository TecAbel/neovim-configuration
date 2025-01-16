return {
  -- notifications
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },
  -- bufferline
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
        diagnostics = "nvim_lsp",
      },
    },
  },
  -- rename ui
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },
  -- logo
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
████████╗███████╗ ██████╗ █████╗ ██████╗ ███████╗██╗     
╚══██╔══╝██╔════╝██╔════╝██╔══██╗██╔══██╗██╔════╝██║     
   ██║   █████╗  ██║     ███████║██████╔╝█████╗  ██║     
   ██║   ██╔══╝  ██║     ██╔══██║██╔══██╗██╔══╝  ██║     
   ██║   ███████╗╚██████╗██║  ██║██████╔╝███████╗███████╗
   ╚═╝   ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝
    ]],
        },
      },
    },
  },
  -- file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        position = "right",
      },
    },
  },
  -- filename
  {
    "b0o/incline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
    priority = 1200,
    config = function()
      local helpers = require("incline.helpers")
      local devicons = require("nvim-web-devicons")
      require("incline").setup({
        window = {
          padding = 0,
          margin = { horizontal = 0 },
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if filename == "" then
            filename = "[No Name]"
          end
          local ft_icon, ft_color = devicons.get_icon_color(filename)
          local modified = vim.bo[props.buf].modified
          return {
            ft_icon and { " ", ft_icon, " ", guibg = ft_color, guifg = helpers.contrast_color(ft_color) } or "",
            " ",
            { filename, gui = modified and "bold,italic" or "bold" },
            " ",
            guibg = "#d79921",
          }
        end,
      })
    end,
  },
}
