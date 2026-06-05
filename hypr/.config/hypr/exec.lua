hl.on("hyprland.start", function ()
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("systemctl --user start swaync")
	hl.exec_cmd("/usr/lib/xdg-desktop-portal-hyprland")
	hl.exec_cmd("/usr/lib/xdg-desktop-portal-gtk")
	hl.exec_cmd("hyprctl dispatch workspace 1")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")

	-- For gtk3 apps you need to install adw-gtk3 theme (sudo pacman -S adw-gtk-theme)
	-- These 2 commands are not required if you use nwg-look to set your theme.
	--[[
	hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3'")
		]]

	hl.exec_cmd("sleep 1")   -- If this is not here, waybar can fail in weird ways.
	hl.exec_cmd("hyprpaper") -- Wallpapers
	hl.exec_cmd("sunsetr")   -- Color temperature changer in the AUR
	hl.exec_cmd("sunsetr set static_temp=6500") -- Resets color on start
	hl.exec_cmd("waybar") 	 -- Status bar
end)
