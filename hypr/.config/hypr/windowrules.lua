hl.window_rule({
	name = "Border color fullscreen",
	match = {
		fullscreen_state_internal = 1, -- If maximized
	},
	border_color = "rgb(04a5e5)" -- #04a5e5
})

hl.window_rule({
	name = "No float file-picker",
	match = {
	class = "org.freedesktop.impl.portal.desktop.kde"
	},
	float = false
})

hl.layer_rule({
	name = "Disable rofi animations",
	match = {
		namespace = "rofi",
	},
	no_anim = true
})
