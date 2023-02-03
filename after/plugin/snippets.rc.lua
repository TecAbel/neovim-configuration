require("luasnip/loaders/from_vscode").lazy_load()
local status, ls = pcall(require, "luasnip")
if (not status) then return end

ls.filetype_extend("typescript", { "javascript" })
ls.filetype_extend("dart", { "flutter" })
