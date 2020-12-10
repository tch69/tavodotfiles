## .xinitrc
# This file is being read everytime X11 starts
# using xinit or startx.

export GTK_IM_MODULE=ibus &
export XMODIFIERS=@im=ibus &
export QT_IM_MODULE=ibus &

setxkbmap -option "ctrl:swapcaps" &
xmodmap /usr/home/fa2_l/.Xmodmap &
xrdb /usr/home/fa2_l/.Xresources &

setbg
ibus-daemon -drx &

pulseaudio --daemon &

exec spectrwm
