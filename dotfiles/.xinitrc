## .xinitrc
# This file is being read everytime X11 starts
# using xinit or startx.

if [ "$(pgrep acpi_control)" == "" ]; then
	acpi_control &
fi

dbus-run-session gentoo-pipewire-launcher &

[ -z $(pgrep mpd) ] && mpd;

xrdb ~/.Xresources;
exec dwm 2>/tmp/dwm.log
