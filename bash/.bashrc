#
# ~/.bashrc
#

eval "$(starship init bash)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias yay='paru'
alias yeet='paru -R'
alias audio='bash ~/bin/headphone_audio.sh'
alias fpu='flatpak update'
alias hyprc='sudo nvim ~/.config/hypr/hyprland.conf'

PS1='[\u@\h \W]\$ '
