# .kshrc
# KornShell(ol) config file

export PATH=$PATH:/usr/home/fa2_l/.local/bin

[[ $- != *i* ]] && return;
[ `tty` = '/dev/tty1' ] && startx

export HISTFILE=~/.cache/terminal_history
export HISTSIZE=1000000

PS1=$'\r\e[1;39m[\e[1;31m!\e[1;39m] \e[1;34m[\e[1;32m$USER\e[1;33m@\e[1;31m$HOST \e[1;39m$PWD\e[1;34m]\n\e[1;34m$ \e[0m'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias vi=$EDITOR
alias vim=$EDITOR
alias ls='ls -FG'
alias pkgsr='pkg search'
alias l='plfetch'
