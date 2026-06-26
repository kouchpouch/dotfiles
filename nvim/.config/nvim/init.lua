vim.opt.shada = "'1000,f1,<500,!,h"

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		local theme_index = vim.g.THEME_INDEX
		if theme_index then
		else
			vim.g.THEME_INDEX = 1
		end
	end,
})

vim.g.c_syntax_for_h = 1
vim.filetype.add({
  extension = {
    h = "c",
  },
})

require("options")
require("keybinds")
require("plugins.themes")
require("plugins.lsp")
require("plugins.dap")
require("config.lazy")
require("config.modus_theme")
require("config.darkvoid_theme")
require("config.lualine")
vim.opt.termguicolors = true

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		if vim.g.lazy_did_setup then
			require("custom_mods.themeswitcher")
		end
	end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "man",
    callback = function()
        vim.wo.number = true
    end,
})
