local saga = require('lspsaga')

saga.setup({
  ui = {
    winblend = 10,
    border = 'rounded',
  },
  symbol_in_winbar = {
    enable = false,
  },
  lightbulb = {
    enable = false,
    enable_in_insert = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },
})
