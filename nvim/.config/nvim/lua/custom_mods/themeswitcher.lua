local TS = require("custom_mods.switcher")

local themes = {
	"nightfly",
	"lunaperche",
	"darkvoid",
	"modus",
	"lunaperche",
}

local l_themes = {
	"nightfly",
	"tomorrow_night",
	"tomorrow_night",
	"modus",
	"modus",
}

local bg = {
	"dark",
	"dark",
	"dark",
	"light",
	"light",
}

print(vim.g.THEME_INDEX)
TS.switch_theme(themes[vim.g.THEME_INDEX], l_themes[vim.g.THEME_INDEX], bg[vim.g.THEME_INDEX])

--vim.api.nvim_create_autocmd("VimEnter", {
--	callback = function ()
--		TS.switch_theme(themes[vim.g.THEME_INDEX], l_themes[vim.g.THEME_INDEX], bg[vim.g.THEME_INDEX])
--	end
--})

local function change_theme (n)
	TS.switch_theme(themes[n], l_themes[n], bg[n])
	vim.g.THEME_INDEX = n
	print(vim.g.THEME_INDEX)
end

--vim.keymap.set('n', '<leader>t1', function ()
--	TS.switch_theme(themes[1], l_themes[1], bg[1])
--	vim.g.THEME_INDEX = 1
--	print(vim.g.THEME_INDEX)
--end)
--
--vim.keymap.set('n', '<leader>t2', function ()
--	TS.switch_theme(themes[2], l_themes[2], bg[2])
--	vim.g.THEME_INDEX = 2
--	print(vim.g.THEME_INDEX)
--end)
--
--vim.keymap.set('n', '<leader>t3', function ()
--	TS.switch_theme(themes[3], l_themes[3], bg[3])
--	vim.g.THEME_INDEX = 3
--	print(vim.g.THEME_INDEX)
--end)

--vim.keymap.set('n', '<leader>t4', function ()
--	TS.switch_theme(themes[4], l_themes[4], bg[4])
--	vim.g.THEME_INDEX = 4
--	print(vim.g.THEME_INDEX)
--end)

vim.keymap.set('n', '<leader>t1', function ()
	change_theme(1)
end)
vim.keymap.set('n', '<leader>t2', function ()
	change_theme(2)
end)
vim.keymap.set('n', '<leader>t3', function ()
	change_theme(3)
end)
vim.keymap.set('n', '<leader>t4', function ()
	change_theme(4)
end)
vim.keymap.set('n', '<leader>t5', function ()
	change_theme(5)
end)

