## .zshrc
## Config file for ZSH (Zoomer Shell)

# Enable colors 
# You might need this: %{$fg[]%}
autoload -U colors && colors

# Some basic auto(tab) complete
autoload -U compinit && compinit
zstyle ':completition:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Prompt
PS1="%B%{$fg[green]%}%M %{$fg[blue]%}[%{$fg[red]%}%n%{$fg[blue]%}]%{$fg[white]%}-%{$fg[blue]%}[%{$fg[red]%}%~%{$fg[blue]%}] $ %{$reset_color%}%b"

# Alias stuff
alias ls="gls --color=auto"
alias cd..="cd .."
function cd { builtin cd "$@" && ls -F }

# Info script
$HOME/.scripts/fetch.sh

# Fish-like syntax highlighting 
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
