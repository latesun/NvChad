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

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

for name, settings in pairs(servers) do
  if name == "clangd" then
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.offsetEncoding = { "utf-16" }
    lspconfig["clangd"].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  else
    lspconfig[name].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      settings = settings,
    }
  end
end
