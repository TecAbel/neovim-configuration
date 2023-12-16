return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'williamboman/nvim-lsp-installer',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'jose-elias-alvarez/typescript.nvim',
      'neovim/nvim-lspconfig',
      'stevearc/conform.nvim',
      'rafamadriz/friendly-snippets',
      'onsails/lspkind.nvim',
      { 'folke/neodev.nvim',  event = "VeryLazy", },
      {
        'L3MON4D3/LuaSnip',
        version = '2.0.0',
        build = "make install_jsregexp"
      },
      {
        'nvimdev/lspsaga.nvim',
        event = "BufRead",
        dependencies = { "nvim-tree/nvim-web-devicons" }
      },
      { "folke/neoconf.nvim", cmd = "Neoconf",    config = false, dependencies = { "nvim-lspconfig" } },
      {
        "j-hui/fidget.nvim",
        tag = "legacy",
        event = "LspAttach",
      }
    },
  },
  {
    "dense-analysis/ale",
    event = "VeryLazy",
  },
}
