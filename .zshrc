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

# 
source .zsh/function.zsh

# Some plugins,because they want to be the last :)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
