#!/usr/local/bin/bash
## SpectrWM bar

disk() {
	free=$(df -h | awk 'NR==2 {print $1" "$3"/"$2" "$5}')
	echo -e $free
}

vol() {
	left=$(amixer get Master | awk 'NR==6 {print $4"%"}')
	right=$(amixer get Master | awk 'NR==7 {print $4"%"}')
	echo -e "VOL: $left|$right"
}

engine() {
	engine=$($HOME/.scripts/ibus-engine.sh)
	echo -e $engine
}

sleep_sec=0.1

while :; do
	echo "$(disk) | $(vol) | $(engine) |"
	sleep $sleep_sec
done
