local servers = {
  lua_ls = require "custom.configs.lsp.lua_ls",
  gopls = require "custom.configs.lsp.gopls",
  golangci_lint_ls = {},
  pyright = {},
  bufls = {},
  jsonls = {},
}

local lspconfig = require "plugins.configs.lspconfig"
for name, settings in pairs(servers) do
  require("lspconfig")[name].setup {
    on_attach = lspconfig.on_attach,
    capabilities = lspconfig.capabilities,
    settings = settings,
  }
end
