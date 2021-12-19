# .bashrc
# Local bash config file
# Adding local bin directory
PATH=$PATH:$HOME/.local/bin
# Return if not running in interactive mode
[[ $- != *i* ]] && return;

# Automatically start dwm if I log into the first tty
[ $(tty) = '/dev/tty1' ] && startx;

# Keybinds
alias pkgsr="emerge -s"
alias ls="ls -Fh --color=always"
alias grep="grep --color=always"

# Prompt
PS1="\[\033[01;39m\][\[\033[01;31m\]\!\[\033[01;39m\]] \[\033[01;34m\][\[\033[01;32m\]\u\[\033[01;33m\]@\[\033[01;31m\]\h\[\033[01;34m\] \[\033[01;39m\]\w\[\033[01;34m\]]\n\$\[\033[00m\] "
