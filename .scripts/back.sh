#!/bin/sh
# Dumb background script

back=$(ls -l ~/.config/backgrounds | awk '{print $9}' | gshuf | head -n1)

feh --bg-scale ~/.config/backgrounds/$back
