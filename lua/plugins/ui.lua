require("notify").setup({
  background_colour = "#000000",
})

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
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
 ______   ______     ______     ______     ______     ______     __        
/\__  _\ /\  ___\   /\  ___\   /\  __ \   /\  == \   /\  ___\   /\ \       
\/_/\ \/ \ \  __\   \ \ \____  \ \  __ \  \ \  __<   \ \  __\   \ \ \____  
   \ \_\  \ \_____\  \ \_____\  \ \_\ \_\  \ \_____\  \ \_____\  \ \_____\ 
    \/_/   \/_____/   \/_____/   \/_/\/_/   \/_____/   \/_____/   \/_____/ 
                                                                           
    ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
