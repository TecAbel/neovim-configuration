-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- save and quit
keymap.set("n", "<Leader>w", " <cmd>w<CR>", { desc = "Save" })
keymap.set("n", "<Leader>W", " <cmd>wa<CR>", { desc = "Save all buffers" })
keymap.set("n", "<Leader>q", " <cmd>q<CR>", { desc = "close" })
keymap.set("n", "<Leader>Q", " <cmd>qa!<CR>", { desc = "Close all" })

-- Telescope
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags prompt_prefix=🔍 <cr>", opts)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits prompt_prefix=🔍 <cr>", opts)

-- tabs
keymap.set("n", "<Leader>nt", "<cmd>tabnew<cr>", { desc = "New tab" })
keymap.set("n", "<Leader>ns", "<cmd>vsplit<cr>", { desc = "Vertical split" })
keymap.set("n", "<Leader>nh", "<cmd>split<cr>", { desc = "Horizontal split" })

-- bufferline
keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
keymap.set("n", "<S-Left>", "<Cmd>BufferLineMovePrev<CR>", {})
keymap.set("n", "<S-Right>", "<Cmd>BufferLineMoveNext<CR>", {})
