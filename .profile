# .profile - read by ksh and sh

EDITOR=nvim;   					export EDITOR # Default word editor
PAGER="nvim -R";  				export PAGER  # Program being used by pager
MANPAGER="nvim -c 'set ft=man' -"; 		export MANPAGER # Program being used with manpages
MPD_HOST="/usr/home/fa2_l/.mpd/socket";		export MPD_HOST # MusicPD socket file

# Shell config file
ENV=$HOME/.kshrc; export ENV
