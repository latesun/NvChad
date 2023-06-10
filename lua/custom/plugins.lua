local plugins = {
  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require "custom.configs.dashboard"
    end,
    lazy = false,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "black",
        "gopls",
        "golangci_lint_ls",
        "gofumpt",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      opts = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "leisiji/interestingwords.nvim",
    lazy = false,
  },

  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup {
        width = 25,
      }
    end,
    lazy = false,
  },

  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[slient! GoInstallDeps]]
    end,
  },
}
return plugins
