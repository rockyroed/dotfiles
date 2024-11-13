#
# ~/.bashrc
#

eval "$(starship init bash)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# alias yay='paru'
alias yeet='paru -R'
alias audio='~/bin/headphone_audio.sh'
alias xdph='~/bin/xdph.sh'
# alias fpu='flatpak update'

PS1='[\u@\h \W]\$ '

PATH=~/.console-ninja/.bin:$PATH
