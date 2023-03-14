function key_mapper(keymaps)
  for _, keymap in ipairs(keymaps) do
    local mode = keymap:sub(1,1)
    local delimiter = " "
    local lhs = ''
    local rhs_parts = {}
    local m = 0
    local options = {noremap = true}
    for matches in (keymap..delimiter):gmatch("(.-)"..delimiter) do
      if m == 1 then
        lhs = matches
      end
      if m >= 2 then
        table.insert(rhs_parts, matches)
      end
      m = m + 1
    end
    rhs = ''
    for _, p in ipairs(rhs_parts) do
      rhs = rhs .. " " .. p
    end
    print("vim.keymap.set(".."\'"..mode.."\'"..", ".."\'"..lhs.."\'"..", ".."\'"..rhs.."\'"..", "..vim.inspect(options)..")")
    vim.keymap.set(mode, lhs, rhs, options)
  end
end

key_mapper({
'nnoremap gd <cmd>Lspsaga lsp_finder <cr> ',
'nnoremap gp <cmd>Lspsaga peek_definition <cr>',
'nnoremap ge <cmd>Lspsaga show_line_diagnostics <cr>',
})
