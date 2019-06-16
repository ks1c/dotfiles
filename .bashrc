[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim='nvim'
alias vifm='$HOME/scripts/vu.sh'

PS1='[\u@\h \W]\$ '

exec fish
