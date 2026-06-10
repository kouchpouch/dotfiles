#!/bin/bash

current=$(gsettings get org.gnome.desktop.interface color-scheme)

if [ $current == "'prefer-dark'" ]; then
	gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
elif [ $current == "'prefer-light'" ]; then
	gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
fi
