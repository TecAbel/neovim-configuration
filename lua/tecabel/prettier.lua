vim.cmd([[
let g:neoformat_try_node_exe = 1
autocmd BufWritePre *.js Neoformat
]])
