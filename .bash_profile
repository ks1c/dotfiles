#
# ~/.bash_profile
#
# souce .bashrc at login
#[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx $HOME/dotfiles/xinitrc
fi

