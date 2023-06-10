return {
  Lua = {
    diagnostics = {
      globals = { "vim", "use", "keymap" },
      disable = { "assign-type-mismatch" },
      unusedLocalExclude = { "client" },
    },
    workspace = {
      library = vim.api.nvim_get_runtime_file("", true),
      checkThirdParty = false,
    },
    telemetry = {
      enable = false,
    },
  },
}
