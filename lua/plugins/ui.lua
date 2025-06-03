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
    event = "BufReadPre",
    priority = 1200,
    config = function()
      require("incline").setup({
        window = {
          padding = 0,
          margin = { horizontal = 2, vertical = 0 },
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if filename == "" then
            filename = "[No Name]"
          end
          local finalTable = {}
          if vim.bo[props.buf].modified then
            -- filename = "[+] " .. filename
            table.insert(finalTable, { " [+] ", guibg = "#cc241d", guifg = "#fbf1c7" })
          end
          local icon = require("nvim-web-devicons").get_icon_color(filename)
          table.insert(finalTable, { " ", icon, guibg = "#bdae93", guifg = "#076678", " " })
          table.insert(finalTable, { " " })
          table.insert(finalTable, { filename, " ", guifg = "#1d2021" })
          finalTable.guibg = "#a89984"
          return finalTable
        end,
      })
    end,
  },
}
