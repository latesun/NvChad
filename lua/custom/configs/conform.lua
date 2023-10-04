require("conform").setup {
  formatters_by_ft = {
    c = { "clang_format" },
    cpp = { "clang_format" },
    go = { "goimports" },
    javascript = { "prettierd" },
    json = { "prettierd" },
    lua = { "stylua" },
    markdown = { "prettierd" },
    proto = { "buf" },
    python = { "isort", "black" },
    rust = { "rustfmt" },
    yaml = { "prettierd" },
  },

  format_on_save = {
    async = false,
    lsp_fallback = true,
    time_ms = 500,
  },
}
