return {
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = {
			hex = {
				default = true, -- default value for unset format keys (see above)
				rgb = true, -- #RGB (3-digit)
				rgba = true, -- #RGBA (4-digit)
				rrggbb = true, -- #RRGGBB (6-digit)
				rrggbbaa = true, -- #RRGGBBAA (8-digit)
				hash_aarrggbb = false, -- #AARRGGBB (QML-style, alpha first)
				aarrggbb = false, -- 0xAARRGGBB
				no_hash = true, -- hex without '#' at word boundaries
      		},
		},
	}
}
