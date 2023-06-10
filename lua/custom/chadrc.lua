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
        line = "#ded1a8",
        folder_bg = "#b8bb26",
      },
    },
  },
}
M.plugins = "custom.plugins"
return M
