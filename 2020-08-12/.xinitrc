## .xinitrc
## Window compositor
picom &

## IBus daemon
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=xim

ibus-daemon -drx &


## Set background using feh
feh --bg-scale /usr/local/share/backgrounds/background.jpg &

## Some layout stuff
xmodmap $HOME/.Xmodmap &
setxkbmap -option "ctrl:swapcaps" &

## Export infomations from .Xresources
xrdb $HOME/.Xresources & 

exec spectrwm
