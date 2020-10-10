#!/usr/local/bin/zsh
## Dummy info script

# Color used by the script
color=$(echo $((RANDOM % 256 +1 )))

# OS/Distro using
os=$(head -n1 /var/run/os-release)

# OS/Kernel version
ver=$(uname -r)

# WM using
wm=$(wmctrl -m | head -n1)

# Amount of packages installed
pack=$(pkg info | gwc -l)

## Script, start, NOW!
clear

echo -e ''
echo -e '\e[1;38;5;'$color'm         '$USER'@'$(hostname)'	'
echo -e ''
echo -e '\e[1;38;5;'$color'm      OS/Distro:\e[0m '${os##*=}'	'
echo -e '\e[1;38;5;'$color'm        Version:\e[0m '$ver'	'
echo -e '\e[1;38;5;'$color'm       Packages:\e[0m '$pack'	'
echo -e '\e[1;38;5;'$color'm         Kernel:\e[0m '${SHELL##*/}''
echo -e '\e[1;38;5;'$color'm             WM:\e[0m '${wm##* }'	'
echo -e '\e[1;38;5;'$color'm       Terminal:\e[0m '$TERM'	'
echo -e ''
echo -e '     \e[1;30m███\e[1;31m███\e[1;32m███\e[1;33m███\e[1;34m███\e[1;35m███\e[1;36m███\e[1;97m███'
echo -e '     \e[1;90m███\e[1;91m███\e[1;92m███\e[1;93m███\e[1;94m███\e[1;95m███\e[1;96m███\e[1;39m███'
echo -e ''

unset color
unset os
unset ver
unset pack
unset wm
