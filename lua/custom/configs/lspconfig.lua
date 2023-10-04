local servers = {
  bufls = {},
  clangd = {},
  golangci_lint_ls = {},
  gopls = require "custom.configs.lsp.gopls",
  lua_ls = require "custom.configs.lsp.lua_ls",
  jsonls = {},
  pyright = {},
  rust_analyzer = require "custom.configs.lsp.rust_analyzer",
  yamlls = {},
}

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

for name, settings in pairs(servers) do
  if name == "clangd" then
    capabilities.offsetEncoding = { "utf-16" }
  end

  require("lspconfig")[name].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = settings,
    filetypes = name == "clangd" and { "c", "cpp" } or nil,
  }
end
