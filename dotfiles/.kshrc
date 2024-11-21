## .kshrc
# Korn shell config file

#[[ $- != *i* ]] && return;
#[ `tty` = '/dev/tty1' ] && startx

export HISTFILE=~/.ksh_history
export HISTSIZE=1000000

export PS1='\[\e[1;39m\][\[\e[1;31m\]!\[\e[1;39m\]] \[\e[1;34m\][\[\e[1;32m\]\u\[\e[1;33m\]@\[\e[1;31m\]\h \[\e[1;39m\]\w\[\e[1;34m\]]\n\[\e[1;34m\]$ \[\e[0m\]'

alias vi=nvim

set -o vi
