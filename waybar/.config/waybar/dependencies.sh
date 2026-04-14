#/bin/bash

echo "Installing dependencies"
sudo pacman -S pavucontrol bluez bluez-utils bluetui jq curl
sudo systemctl enable --now bluetooth.service
if command -v yay; then 
	yay -S sunsetr
	sunsetr set transition_mode=static
	sunsetr -b
else
	echo "Cannot find yay!"
fi
