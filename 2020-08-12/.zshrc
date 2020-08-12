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


export XMODIFIERS="@im=unikey"
export GTK_IM_MODULE="xim"

# Read aliases in function.zsh
source $HOME/.zsh/function.zsh

# Some plugins,because they want to be the last :)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
