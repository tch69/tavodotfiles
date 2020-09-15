#!/usr/local/bin/bash
# fa2_l <ifa26417@outlook.com.vn>
## Quick info script
## Pre-checks for wmctrl and GNU's gshuf
if ! command -v wmctrl &> /dev/null
then
	echo -e "\e[1;31mwmctrl\e[0m is not found!"
	exit
fi

if ! command -v gshuf &> /dev/null
then
	echo -e "\e[1;31mgshuf\e[0m is not found!"
fi

## Functions
# Bash color (1-256)
color=$(gshuf -e {1..256} | awk 'NR==1 {print $1}')

# Kernel/OS name
os=$(uname)

# Kernel version
ver=$(uname -r)

# Shell using
shell=$(echo $SHELL)

# Terminal
term=$(echo $TERM)

# WM using
wm=$(wmctrl -m | awk '/Name:/ {print $2}')

# Number of packages installled
pack=$(pkg info | wc -l | awk '{print $1}')

## Script, start, NOW!
# Clear all craps on the terminal screen/window
clear
# Print shits 
printf '\n'
printf '\e[1;38;5;'$color'm        '$USER'@'$(hostname)'    \n'
printf '\n'
printf '\e[1;38;5;'$color'm      OS/Kernel:\e[0m '$os'     \n'
printf '\e[1;38;5;'$color'm        Version:\e[0m '$ver'   \n'
printf '\e[1;38;5;'$color'm       Packages:\e[0m '$pack'   \n'
printf '\e[1;38;5;'$color'm             WM:\e[0m '$wm'     \n'
printf '\e[1;38;5;'$color'm       Terminal:\e[0m '$term'   \n'
printf '\n'
