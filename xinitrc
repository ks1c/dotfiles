#!/bin/sh

# -- Starting up some programs
sxhkd -c ~/dotfiles/sxhkdrc &
xwallpaper --zoom ~/wall.png
setxkbmap -option altwin:swap_alt_win
compton &
xrdb ~/dotfiles/Xresources
setlaptoptrackpad
dunst -config ~/dotfiles/dunstrc &
birdtray &
gdrive pull &

# -- Start window manager
case $session in
	i3  ) exec i3 -c ~/dotfiles/i3/i3.config;;
	dwm ) ~/scripts/dwmbar.sh & exec dwm;;
	*   ) ~/scripts/dwmbar.sh & exec dwm;;
esac
