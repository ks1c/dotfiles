#!/bin/sh

export PATH=$HOME/scripts/bin:$PATH
export TERMINAL=st
export BROWSER=firefox
export _JAVA_AWT_WM_NONREPARENTING=1
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk

[ "$(tty)" = "/dev/tty1" ] && exec startx $HOME/dotfiles/xinitrc
