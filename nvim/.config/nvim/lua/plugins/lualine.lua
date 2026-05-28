return {
	{
	'nvim-tree/nvim-web-devicons',
		opts = {
			override = {
				c = {
					icon = "",
					color = "#A8B9CC",
					name = "DevIconC"
				}
			}
		}
	},

	{
		'nvim-lualine/lualine.nvim',
		dependencies = {
			'nvim-tree/nvim-web-devicons'
		},
		opts = {
			theme = "nightfly",
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'branch', 'diff', 'diagnostics'},
				lualine_c = {'filename'},
				lualine_x = {'filetype'},
				lualine_y = {'location'},
				lualine_z = {}
			},
		},
	},
}
