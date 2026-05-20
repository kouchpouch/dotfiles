hl.window_rule({
	match = {
		fullscreen_state_internal = 1, -- If maximized
	},
	border_color = "rgb(50FF50)" -- #50FF50
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
  float = true
})

hl.layer_rule({
	match = {
		namespace = "rofi",
	},
	no_anim = true
})
