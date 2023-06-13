local servers = {
  lua_ls = require "custom.configs.lsp.lua_ls",
  gopls = require "custom.configs.lsp.gopls",
  rust_analyzer = require "custom.configs.lsp.rust_analyzer",
  golangci_lint_ls = {},
  pyright = {},
  bufls = {},
  jsonls = {},
  clangd = {},
}

local lspconfig = require "plugins.configs.lspconfig"
for name, settings in pairs(servers) do
  require("lspconfig")[name].setup {
    on_attach = lspconfig.on_attach,
    capabilities = lspconfig.capabilities,
    settings = settings,
  }
end
