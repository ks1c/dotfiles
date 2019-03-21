export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl/:$HOME/scripts/bin

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx $HOME/dotfiles/xinitrc
fi

