# starship
eval "$(starship init zsh)"

export QT_QPA_PLATFORMTHEME=gtk3

alias grep='grep --color=auto'

alias yeet='paru -R'

alias ls='eza --icons -F -H --git'
alias lsa='eza -alF --icons -F -H --git'

alias tsu='sudo timeshift --create && sudo timeshift --delete'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/roed/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
