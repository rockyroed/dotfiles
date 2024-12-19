# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# starship
# eval "$(starship init zsh)"

# zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# download zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# source/load zinit
source "${ZINIT_HOME}/zinit.zsh"

# powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# zinit plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# aliases
alias grep='grep --color=auto'

alias pr='paru'
alias prd='paru -R'

alias ls='eza --icons -F -H --git'
alias lsa='eza -alF --icons -F -H --git'

alias c='clear'
alias v='nvim'

alias .='cd'
alias ..='cd ..'
alias cdp='cd ~/Pictures/'
alias cdd='cd ~/Downloads/'
alias cddot='cd ~/repos/dotfiles/'
alias cdconf='cd ~/.config/'
alias cdh='cd /run/media/roed/HDD/'

alias gstat='git status'
alias gadd='git add'
alias gcom='git commit -m'
alias gpush='git push'
alias gpusho='git push origin'
alias gcheck='git checkout'
alias gmerge='git merge'

alias tsu='sudo timeshift --create && sudo timeshift --delete'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt notify
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# vim keybindings
bindkey -v
export KEYTIMEOUT=1
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line
bindkey '^l' autosuggest-accept

# fix backspace bug when switching modes
bindkey '^?' backward-delete-char

zstyle :compinstall filename '/home/roed/.zshrc'

autoload -Uz compinit
compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
