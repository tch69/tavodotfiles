## .zshrc
## 'Zoomer shell' config file

autoload -U colors && colors
autoload -U compinit && compinit
zmodload zsh/complist
zstyle ':completition:*' menu select
_comp_options+=(globdots)

alias ls="gls --color=auto"
alias make="gmake"
alias cd..="cd .."
alias pkgsr='pkg search'
alias efetch='$HOME/.scripts/fetch.sh'
function cd { builtin cd "$@" && ls -F }
alias '?'="ls"

export EDITOR="nvim"
export PATH=$PATH:/usr/home/fa2_l/.local/bin

setopt correct
set -o vi

function zle-line-init zle-keymap-select {
	PS1="%B%{$fg[green]%}%M %{$fg[blue]%}[%{$fg[red]%}%n%{$fg[blue]%}]%{$fg[white]%}-%{$fg[blue]%}[%{$fg[red]%}%~%{$fg[blue]%}] %{$fg[white]%}${${KEYMAP/vicmd/NORMAL}/(main|viins)/INSERT} %{$fg[blue]%}%# %{$reset_color%}%b"
	zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

case $TTY in /dev/ttyv0) startx ;; esac

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
