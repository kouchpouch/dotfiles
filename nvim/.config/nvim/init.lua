local dark_theme = "nightfly"
local light_theme = "lunaperche"

require("options")
require("keybinds")
require("plugins.themes")
require("plugins.lsp")
require("config.lazy")
require("config.lualine")

-- Switch to dark theme
vim.keymap.set('n', '<leader>cd', function()
	vim.cmd("set background=dark")
	vim.cmd("colorscheme " .. dark_theme)
	require('lualine').setup {
		options = { theme = dark_theme },
	}
end)

-- Switch to light theme
vim.keymap.set('n', '<leader>cl', function()
	vim.cmd("set background=light")
	vim.cmd("colorscheme " .. light_theme)
	require('lualine').setup {
		options = { theme = "ayu_light" },
	}
end)

vim.cmd("colorscheme nightfly")

vim.opt.termguicolors = true
