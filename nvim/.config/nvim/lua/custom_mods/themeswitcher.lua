local TS = require("custom_mods.switcher")

local themes = {
	"nightfly",
	"modus",
	"lunaperche",
	"lunaperche",
}

local l_themes = {
	"nightfly",
	"modus",
	"tomorrow_night",
	"onelight",
}

local bg = {
	"dark",
	"light",
	"dark",
	"light",
}

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function ()
		TS.switch_theme(themes[vim.g.THEME_INDEX], l_themes[vim.g.THEME_INDEX], bg[vim.g.THEME_INDEX])
	end
})

vim.keymap.set('n', '<leader>t1', function ()
	TS.switch_theme(themes[1], l_themes[1], bg[1])
	vim.g.THEME_INDEX = 1
end)

vim.keymap.set('n', '<leader>t2', function ()
	TS.switch_theme(themes[2], l_themes[2], bg[2])
	vim.g.THEME_INDEX = 2
end)

vim.keymap.set('n', '<leader>t3', function ()
	TS.switch_theme(themes[3], l_themes[3], bg[3])
	vim.g.THEME_INDEX = 3
end)

vim.keymap.set('n', '<leader>t4', function ()
	TS.switch_theme(themes[4], l_themes[4], bg[4])
	vim.g.THEME_INDEX = 4
end)
