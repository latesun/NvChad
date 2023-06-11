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
        "bufls",
        "prettierd",
        "jsonls",
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
      require "custom.configs.outline"
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

  {
    "jcdickinson/codeium.nvim",
    config = function()
      require("codeium").setup {}
    end,
    lazy = false,
  },

  {
    "ethanholz/nvim-lastplace",
    config = function()
      require("nvim-lastplace").setup {}
    end,
    lazy = false,
  },
}
return plugins
