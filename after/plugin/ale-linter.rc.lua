vim.cmd([[
  " Fix files with prettier, and then ESLint.
  let b:ale_fixers = ['prettier', 'eslint']
  let g:ale_use_neovim_diagnostics_api = 1

  let g:ale_lint_on_text_changed = 1
  let g:ale_lint_on_insert_leave = 1
  " You can disable this option too
  " if you don't want linters to run on opening a file
  let g:ale_lint_on_enter = 1

]])
