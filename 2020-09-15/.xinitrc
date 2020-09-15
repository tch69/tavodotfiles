## .xinitrc
## Window compositor
xcompmgr &

## IBus daemon
export GTK_IM_MODULE=ibus &
export XMODIFIERS=@im=ibus &
export QT_IM_MODULE=xim &

ibus-daemon -drx &

## Set background using feh
feh --bg-scale $HOME/.config/backgrounds/back1.jpg &

## Some layout stuff
setxkbmap -option "ctrl:swapcaps" &
xmodmap $HOME/.Xmodmap
## Export infomations from .Xresources
xrdb $HOME/.Xresources & 

exec spectrwm
