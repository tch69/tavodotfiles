#!/usr/local/bin/bash
## SpectrWM bar

os() {
	os=$(awk 'NR==6 {print $0}' /var/run/os-release | tr -d '"')
	echo ${os##*=}
}


disk() {
	free=$(df -h | awk 'NR==2 {print $1" "$3"/"$2" "$5" "$4}')
	echo -e $free
}

vol() {
	left=$(amixer get Master | awk 'NR==6 {print $4"%"}')
	right=$(amixer get Master | awk 'NR==7 {print $4"%"}')
	echo -e "VOL: $left-$right"
}

while :; do
	echo "$(os) | $(disk) | $(vol) | $(ibus engine) |"
done
