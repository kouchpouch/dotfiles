local F = {}

function F.switch_light (theme)
	vim.cmd("set background=light")
	vim.cmd("colorscheme " .. theme)
	require('lualine').setup {
		options = { theme = theme },
	}
	vim.cmd("colorscheme " .. theme)
end

function F.switch_dark (theme)
	vim.cmd("set background=dark")
	vim.cmd("colorscheme " .. theme)
	require('lualine').setup {
		options = { theme = theme },
	}
	vim.cmd("colorscheme " .. theme)
end

return F
