local TS = require("custom_mods.switcher")

-- Switch to dark theme
vim.keymap.set('n', '<leader>cl', function ()
	TS.switch_light(Light_theme)
end)

-- Switch to light theme
vim.keymap.set('n', '<leader>cd', function ()
	TS.switch_dark(Dark_theme)
end)
