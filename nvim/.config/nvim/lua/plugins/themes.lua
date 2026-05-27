return {
	{
		"miikanissi/modus-themes.nvim", priority = 1000
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"bluz71/vim-nightfly-colors",
		name = "nightfly",
		lazy = false,
		config = function()
			vim.cmd("colorscheme nightfly")
		end
	},
}
