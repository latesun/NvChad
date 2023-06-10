local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting

local sources = {
  formatting.black,
  formatting.gofumpt,
  formatting.stylua,
  formatting.prettier,
  formatting.buf,
}

null_ls.setup {
  sources = sources,
  on_attach = function(client)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
    end
  end,
}
