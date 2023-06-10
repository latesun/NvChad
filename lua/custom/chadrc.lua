---@type ChadrcConfig
local M = {}
M.ui = {
  theme = "gruvbox",
  transparency = true,
  changed_themes = {
    gruvbox = {
      base_30 = {
        grey = "#c0b38a",
        grey_fg = "#b6a980",
        grey_fg2 = "#ac9f76",
        folder_bg = "#b8bb26",
      },
      base_16 = {
        base02 = "#746d69",
        base03 = "#d8cba2",
      },
    },
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
