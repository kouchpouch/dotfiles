hl.window_rule({
	match = {
		fullscreen_state_internal = 1, -- If maximized
	},
	border_color = "rgb(04a5e5)" -- #04a5e5
})

hl.window_rule({
  match = {
    class = "[fF]irefox",
  },
  opaque = true
})

hl.window_rule({
  match = {
    class = "[dD]iscord",
  },
  opaque = true
})

hl.window_rule({
  match = {
    class = "[sP]potify",
  },
  opaque = true
})

hl.window_rule({
  match = {
    class = "[nN]emo",
  },
  opaque = true
})

hl.window_rule({
  match = {
    class = "org.kde.dolphin",
  },
  opaque = true;
})

hl.layer_rule({
	match = {
		namespace = "rofi",
	},
	no_anim = true
})
