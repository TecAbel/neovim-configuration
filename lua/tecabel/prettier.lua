local prettier = require("prettier")

prettier.setup({
  ["null-ls"] = {
    condition = function()
      return prettier.config_exists({
        -- if `false`, skips checking `package.json` for `"prettier"` key
        check_package_json = true,
      })
    end,
    runtime_condition = function(params)
      -- return false to skip running prettier
      return true
    end,
    timeout = 5000,
  },
  bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
  cli_options = {
    arrow_parens = "avoid",
    bracket_spacing = true,
    bracket_same_line = false,
    embedded_language_formatting = "auto",
    end_of_line = "auto",
    html_whitespace_sensitivity = "css",
    -- jsx_bracket_same_line = false,
    jsx_single_quote = false,
    print_width = 80,
    prose_wrap = "preserve",
    quote_props = "as-needed",
    semi = false,
    single_attribute_per_line = true,
    single_quote = true,
    tab_width = 2,
    trailing_comma = "none",
    use_tabs = false,
  },
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "ts",
    "tsx",
    "jsx",
    "yaml",
  },
})
