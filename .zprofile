#!/bin/sh

export PATH=$HOME/scripts/bin:$PATH
export TERMINAL=termite
export BROWSER=firefox

[ "$(tty)" = "/dev/tty1" ] && exec startx $HOME/dotfiles/xinitrc
