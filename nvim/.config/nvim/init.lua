Light_theme = "modus"
Dark_theme = "nightfly"

require("options")
require("keybinds")
require("plugins.themes")
require("plugins.lsp")
require("config.lazy")
require("config.lualine")
require("config.modus_theme")
require("custom_mods.themeswitcher")

vim.cmd("colorscheme " .. Dark_theme)

vim.opt.termguicolors = true
