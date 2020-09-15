#!/bin/sh
## Screenshot script
# Delay before taking screenshot
delay=1
# Quality (1-100)
quality=100

scrot -d $delay -q $quality -e 'mv $f /home/fa2_l/Pictures/'
