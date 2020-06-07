#!/bin/bash
# baraction.sh for spectrwm status bar

## Disk 
hdd() {
  hdd="$(df -h | awk 'NR==4{print $3"/"$4, $5}')"
  echo -e "HDD: $hdd"
}

## RAM
mem() {
  mem=`free | awk '/Mem/ {printf "%dM/%dM\n", $3 / 1024.0, $2 / 1024.0 }'`
  echo -e "$mem"
}

## CPU
cpu() {
  read cpu a b c previdle rest < /proc/stat
  prevtotal=$((a+b+c+previdle))
  sleep 0.5
  read cpu a b c idle rest < /proc/stat
  total=$((a+b+c+idle))
  cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
  echo -e "CPU: $cpu%"
}

## Volume
vol() {
    vol=`amixer get Master | awk 'NR==5{print $4}'`
    echo -e "$vol"
}

ibus() {
   ibus=`$HOME/.scripts/ibus-language.sh`
   echo -e "$ibus"
}
SLEEP_SEC=0.2
#loops forever outputting a line every SLEEP_SEC secs

while :; do
    echo "$(cpu) | $(mem) | $(hdd) | $(vol) | $(ibus) |"
	sleep $SLEEP_SEC
done
