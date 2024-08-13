## .xinitrc
# This file is being read everytime X11 starts
# using xinit or startx.

export GTK_IM_MODULE=ibus
export QT5_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export XIM_PROGRAM=/usr/bin/ibus-daemon

export QT_QPA_PLATFORMTHEME=qt6ct

export $(dbus-launch)
/usr/libexec/pipewire-launcher

xrdb ~/.Xresources

exec dwm
