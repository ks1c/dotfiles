PROMPT='%F{magenta}[%f%n %F{blue}%B%1~%b%F{magenta}]%f '
RPROMPT='%F{magenta}[ %f%T %F{magenta}]'

autoload -Uz compinit
compinit

alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -lah --color=auto'
alias vim='nvim'

source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/zsh-completions/zsh-completions.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
