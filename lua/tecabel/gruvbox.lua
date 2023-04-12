-- setup must be called before loading the colorscheme
-- Default options:
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = { strings = false },
  strikethrough = true,
  invert_selection = true,
  invert_signs = false,
  invert_tabline = true,
  invert_intend_guides = true,
  inverse = true,    -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  -- transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")
vim.cmd([[
highlight Normal guibg=black guifg=white
]])
