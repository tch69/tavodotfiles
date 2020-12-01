# .kshrc
# KornShell(ol) config file

export PATH=$PATH:/usr/home/fa2_l/.local/bin
set -o vi

PS1=$'\r\e[1;34m[\e[1;32m${USER}\e[1;33m@\e[1;31m$(hostname) \e[1;39m$(pwd)\e[1;34m]\n\e[1;34m$ \e[0m'

alias make='gmake'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias vi=$EDITOR
alias vim=$EDITOR
alias ls='ls -GF'
alias pkgsr='pkg search'
alias l='lfetch'
