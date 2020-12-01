# $FreeBSD: releng/12.2/share/skel/dot.profile 363525 2020-07-25 11:57:39Z pstef $
#
# .profile - Bourne Shell startup script for login shells
#
# see also sh(1), environ(7).
#

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin; export PATH

# Setting TERM is normally done through /etc/ttys.  Do only override
# if you're sure that you'll never log in via telnet or xterm or a
# serial line.
# TERM=xterm; 	export TERM

EDITOR=nvim;   					export EDITOR
PAGER="nvim -R";  				export PAGER
MANPAGER="nvim -c 'set ft=man' -"; 		export MANPAGER
MPD_HOST="/usr/home/fa2_l/.mpd/socket";		export MPD_HOST

# set ENV to a file invoked each time sh is started for interactive use.
ENV=$HOME/.kshrc; export ENV

# Let sh(1) know it's at home, despite /home being a symlink.
if [ "$PWD" != "$HOME" ] && [ "$PWD" -ef "$HOME" ] ; then cd ; fi

# Query terminal size; useful for serial lines.
if [ -x /usr/bin/resizewin ] ; then /usr/bin/resizewin -z ; fi

# Display a random cookie on each login.
if [ -x /usr/bin/fortune ] ; then /usr/bin/fortune freebsd-tips ; fi
