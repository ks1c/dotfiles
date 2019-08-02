#!/bin/sh

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
exec i3 -c ~/dotfiles/i3/i3.config
