## .xinitrc
# This file is being read everytime X11 starts 
# using xinit or startx.

export GTK_IM_MODULE=ibus &
export XMODIFIERS=@im=ibus &
export QT_IM_MODULE=xim &

setxkbmap -option "ctrl:swapcaps" &
xmodmap -e "keycode 9  = grave asciitilde grave asciitilde" &
xmodmap -e "keycode 49 = Escape NoSymbol Escape" &
xrdb /usr/home/fa2_l/.Xresources & 
xcompmgr &

~/.scripts/back.sh &
ibus-daemon -drx &

exec spectrwm
