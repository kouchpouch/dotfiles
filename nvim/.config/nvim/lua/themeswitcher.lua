local dark_theme = "nightfly"
local light_theme = "modus"

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
		options = { theme = "modus" },
	}
	vim.cmd("colorscheme " .. light_theme) -- For whatever reason I need to 
										   -- call this twice
end)
