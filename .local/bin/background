#!/bin/sh
# Dumb background script
# This script changes the desktop wallpaper.

back=$(ls .config/backgrounds | gshuf | head -n1)
xwallpaper --stretch ~/.config/backgrounds/$back
