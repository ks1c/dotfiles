#!/bin/sh

export PATH=$HOME/scripts/bin:$PATH
export TERMINAL=st
export BROWSER=firefox

[ "$(tty)" = "/dev/tty1" ] && exec startx $HOME/dotfiles/xinitrc
