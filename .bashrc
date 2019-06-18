[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim='nvim'

PS1='[\u@\h \W]\$ '

exec fish
