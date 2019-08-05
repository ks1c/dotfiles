#!/bin/sh

dwmbar() {

	while true; do
		BARNAME="$(~/scripts/bar/disk2)"
		BARNAME="$BARNAME $(~/scripts/bar/timedate)"
		xsetroot -name "$BARNAME"
		sleep 1m
	done
}

# -- Starting up some programs
xwallpaper --zoom ~/wall.png &
setxkbmap -option altwin:swap_alt_win &
compton &
xrdb ~/dotfiles/Xresources &
setlaptoptrackpad &
dunst -config ~/dotfiles/dunstrc &
birdtray &
gdrive pull &

# -- Start window manager
case $session in
	i3  ) exec i3 -c ~/dotfiles/i3/i3.config;;
	dwm ) dwmbar & exec dwm;;
	*   ) dwmbar & exec dwm;;
esac
