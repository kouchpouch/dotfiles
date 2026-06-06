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
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},
}
