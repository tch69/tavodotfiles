## .xinitrc
# This file is being read everytime X11 starts
# using xinit or startx.

export GTK_IM_MODULE=ibus &
export XMODIFIERS=@im=ibus &

exec dwm
