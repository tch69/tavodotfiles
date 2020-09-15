#!/bin/sh
## Alias (?)

# Colorize nearly everything possible
alias ls="gls --color=auto"

# cd automatically ls (?)
function cd { builtin cd "$@" && ls -F }

# I don't like cd .. , so.. cd..!
alias cd..="cd .."

