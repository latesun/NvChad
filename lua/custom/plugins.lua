local plugins = {
  {
    "nvimdev/dashboard-nvim",
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
        "black",
        "bufls",
        "clang_format",
        "gofumpt",
        "goimports",
        "golangci_lint_ls",
        "gopls",
        "isort",
        "jsonls",
        "prettierd",
        "pyright",
        "ruff_lsp",
        "rust_analyzer",
        "rustfmt",
        "stylua",
        "taplo",
        "yamlls",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "custom.configs.conform"
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

  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
  },

  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    config = function()
      require("crates").setup()
    end,
  },

  {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function()
      require("hop").setup {}
    end,
    lazy = false,
  },

  {
    "kevinhwang91/nvim-hlslens",
    config = function()
      require("hlslens").setup()
    end,
    lazy = false,
  },

  {
    "folke/todo-comments.nvim",
    config = function()
      require("todo-comments").setup {}
    end,
    lazy = false,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
}
return plugins
