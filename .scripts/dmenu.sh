#!/bin/bash
# Not a dmenu config file, for sure lmao

# Set font (font-size)
font='Roboto Mono-11'

# Background color
sb_color=3b48e3
nb_color=080808

# Foreground color
sf_color=ffffff
nf_color=ffffff

# Run
dmenu_run -fn "$font" -sb "#$sb_color" -nb "#$nb_color" -sf "#$sf_color" -nf "#$nf_color"

