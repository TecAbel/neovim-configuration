require("notify").setup({
  background_colour = "#000000",
})

return {
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
