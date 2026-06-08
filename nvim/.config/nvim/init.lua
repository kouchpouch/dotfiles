vim.opt.shada:append('!')
if (vim.g.THEME_INDEX == nil or vim.g.THEME_INDEX < 1 or vim.g.THEME_INDEX > 4) then
	vim.g.THEME_INDEX = 1
end

require("options")
require("keybinds")
require("plugins.themes")
require("plugins.lsp")
require("config.lazy")
require("config.lualine")
require("config.modus_theme")
require("custom_mods.themeswitcher")

vim.opt.termguicolors = true
