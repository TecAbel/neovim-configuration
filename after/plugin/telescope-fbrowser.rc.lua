local status, telescope = pcall(require, 'telescope')
if (not status) then return end
local actions = require'telescope.actions'

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end
-- You don't need to set any of these options.
-- IMPORTANT!: this is only a showcase of how you can set default options!
telescope.setup {
  defaults = {
    file_ignore_patterns = { "node_modules", ".git" },
    mappings = {
      n = {
        ["q"] = actions.close
      }
    }
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      -- mappings = {
      --   ["i"] = {
      --     -- your custom insert mode mappings
      --   },
      --   ["n"] = {
      --     -- your custom normal mode mappings
      --   },
      -- },
    },
  },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
telescope.load_extension "file_browser"

vim.keymap.set("n", "<space>n", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = true,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)
