
" In your init.lua or init.vim
set termguicolors
lua << EOF
local status, bufferline = pcall(require, 'bufferline')
bufferline.setup{
options = {
  mode = 'buffers',
  separator_style = 'slant',
  },
highlights = {
  separator = {
    guifg = '#073642',
    guibg = '#002b36',
    },
  separator_selected = {
    guifg = '#073642',
    },
  background = {
    guifg = '#657b83',
    guibg = '#002b36'
    },
  buffer_selected = {
    guifg = '#fdf6e3',
    gui = "bold",
    },
  fill = {
    guibg = '#073642'
    }
  },
}
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
EOF
