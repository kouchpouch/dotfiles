local F = {}

function F.switch_theme (theme, ll_theme, background)
	vim.cmd("set background=" .. background)
	vim.cmd("colorscheme " .. theme)
	require('lualine').setup {
		options = { theme = ll_theme },
	}
	vim.cmd("colorscheme " .. theme)
end

return F
