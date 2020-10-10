#!/usr/local/bin/zsh
## .zshrc
## 'Zoomer shell' config file

[[ $TTY == "/dev/ttyv0" ]] && xinit

SAVEHIST=100000000
export HISTFILE=~/.cache/zsh_history

autoload -U colors && colors
zstyle ':completition:*' menu select

function zle-line-init zle-keymap-select {
PS1="%B%F{white}${${KEYMAP/vicmd/[N]}/(main|viins)/[I]} %F{blue}[%F{green}%n%F{yellow}@%F{red}%M %F{white}%~%F{blue}] %#%b%f "
	PS2=$PS1
	zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

alias ls="gls --color=auto"
alias make="gmake"
alias cd..="cd .."
alias pkgsr='pkg search'
alias l='~/.scripts/fetch.sh'
function cd { builtin cd "$@" && ls -F }
alias '?'="ls"

setopt correct
setopt autocd
set -o vi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
