
local status, bufferline = pcall(require, 'bufferline')
bufferline.setup({
  options = {
    mode = "buffers",
    separator_style = 'slant',
    always_show_bufferline = false,
    show_tab_indicators = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    -- indicator = {
    --   style = 'underline'
    -- }
  },
  --[[ highlights = {
    separator = {
      fg = '#073642',
      bg = '#002b36',
    },
    separator_selected = {
      fg = '#073642',
    },
    background = {
      fg = '#657b83',
      bg = '#002b36'
    },
    info_selected = {
      fg = '#fdf6e3',
      bold = true,
      italic = true,
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
      italic = true,
    },
    fill = {
      bg = '#073642'
    }
  }, ]]
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', '<S-Left>', '<Cmd>BufferLineMovePrev<CR>', {})
vim.keymap.set('n', '<S-Right>', '<Cmd>BufferLineMoveNext<CR>', {})
