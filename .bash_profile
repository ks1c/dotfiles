#!/bin/bash
export PATH=$PATH:$HOME/scripts/bin
export TERMINAL=termite
export BROWSER=firefox

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx $HOME/dotfiles/xinitrc
fi

