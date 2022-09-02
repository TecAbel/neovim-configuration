
" In your init.lua or init.vim
" set termguicolors
lua << EOF
local status, bufferline = pcall(require, 'bufferline')
bufferline.setup{
options = {
  mode = 'buffers',
  separator_style = 'slant',
  },
highlights = {
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
  buffer_selected = {
    fg = '#fdf6e3',
    bold = true,
    },
  fill = {
    bg = '#073642'
    }
  }
}
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
EOF
