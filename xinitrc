#!/bin/sh

# for cron jobs to send notifications
echo $DBUS_SESSION_BUS_ADDRESS > /tmp/dbusaddr

# -- Starting up some programs
xwallpaper --zoom ~/wall.png
setxkbmap -option altwin:swap_alt_win
compton &
xrdb ~/dotfiles/Xresources
setlaptoptrackpad
dunst -config ~/dotfiles/dunstrc &
birdtray &
steam &

# -- Start jobs after xorg initialize
checkupdates | wc -l > /tmp/pacman_updates &
check_repositories &
gdrive pull &
check_rss &

# -- Start window manager
case $session in
	i3  ) exec i3 -c ~/dotfiles/i3/i3.config;;
	dwm ) while true; do dwmbar; sleep 10; done & exec dwm;;
	*   ) while true; do dwmbar; sleep 10; done & exec dwm;;
esac
