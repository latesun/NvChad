local M = {}

M.disabled = {
  n = {
    ["<leader>wa"] = "",
    ["<leader>wr"] = "",
    ["<leader>wl"] = "",
    ["<leader>wK"] = "",
    ["<leader>wk"] = "",
    ["<leader>rn"] = "",
  },
}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "Window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "Window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "Window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "Window up" },

    ["<leader>w"] = { "<cmd> w <CR>", "Save buffer" },
    ["<leader>wa"] = { "<cmd> wa <CR>", "Save all buffers" },
    ["<leader>td"] = { "<cmd> TodoTelescope <CR>", "Display todolist" },
    ["f"] = { "<cmd> HopChar1 <CR>", "Easy motion with a char" },
    ["ss"] = { "<cmd> HopChar2 <CR>", "Easy motion with two chars" },
    ["*"] = { "*<cmd> lua require('hlslens').start() <CR>", "" },
    ["#"] = { "#<cmd> lua require('hlslens').start() <CR>", "" },
    ["g*"] = { "g*<cmd> lua require('hlslens').start() <CR>", "" },
    ["g#"] = { "g#<cmd> lua require('hlslens').start() <CR>", "" },
  },

  i = {
    ["jk"] = { "<ESC>", "Exit" },
    ["<leader>w"] = { "<cmd> w <CR><ESC>", "Save buffer" },
    ["<leader>wa"] = { "<cmd> wa <CR><ESC>", "Save all buffers" },
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
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },

    ["<leader>ca"] = {
      "<cmd> CodeActionMenu <CR>",
      "LSP code action",
    },
  },
}

M.nvterm = {
  plugin = true,

  t = {
    ["<leader>tm"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
  },

  n = {
    ["<leader>tm"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
  },
}

return M
