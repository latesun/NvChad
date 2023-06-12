local M = {}

M.disabled = {
  n = {
    ["<leader>rn"] = "",
  },
}

M.keybinding = {
  n = {
    ["<leader>w"] = { "<cmd> w <CR>", "Save buffer" },
  },

  i = {
    ["jk"] = { "<ESC>", "Exit" },
    ["<leader>w"] = { "<cmd> w <CR><ESC>", "Save buffer" },
  },
}

M.lazy = {
  n = {
    ["<leader>l"] = { "<cmd> Lazy <CR>", "Toggle lazy" },
  },
}

M.dashboard = {
  n = {
    ["<leader>a"] = { "<cmd> Dashboard <CR>", "Toggle launch page" },
  },
}

M.interestingwords = {
  n = {
    ["<leader>k"] = { "<cmd> Interestingwords --toggle <CR>", "Toggle an interesting word" },
    ["<leader>K"] = { "<cmd> Interestingwords --remove_all <CR>", "Disable all interesting words" },
  },
}

M.gopher = {
  n = {
    ["<leader>ge"] = { "<cmd> GoIfErr <CR>", "Generate go err" },
    ["<leader>gt"] = { "<cmd> GoTestAdd <CR>", "Generate go test" },
  },
}

M.tagbar = {
  n = {
    ["tt"] = { "<cmd> SymbolsOutline <CR>", "Toggle tagbar" },
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}

M.lspconfig = {
  plugin = true,

  n = {
    ["gd"] = {
      function()
        require("telescope.builtin").lsp_definitions()
      end,
      "LSP definition",
    },

    ["gi"] = {
      function()
        require("telescope.builtin").lsp_implementations()
      end,
      "LSP implementation",
    },

    ["gr"] = {
      function()
        require("telescope.builtin").lsp_references()
      end,
      "LSP references",
    },

    ["go"] = {
      function()
        require("telescope.builtin").diagnostics()
      end,
      "LSP references",
    },

    ["<leader>rn"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "LSP rename",
    },

    ["<leader>ca"] = {
      "<cmd> CodeActionMenu <CR>",
      "LSP code action",
    },
  },
}

return M
