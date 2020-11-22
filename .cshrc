# .cshrc
# csh/tcsh config file


setenv EDITOR 	nvim
setenv PAGER	"nvim -R"
setenv MANPAGER	"nvim -c 'set ft=man' -"
setenv MPD_HOST	"/usr/home/fa2_l/.mpd/socket"

set path = ($path $HOME/.local/bin)
set prompt  = "%{\e[1;37m%}[%{\e[1;31m%}\!%{\e[1;37m%}] %{\e[1;34m%}[%{\e[1;32m%}%n%{\e[1;33m%}@%{\e[1;31m%}%m %{\e[1;39m%}%~%{\e[1;34m%}]%{\e[1;39m%} %#%{\e[0;39m%} "
set promptchars = "%#"
set filec
set history = 1000000
set savehist = (1000000 merge)
set histfile = (~/.local/.csh_history)
set autolist = ambiguous
set autoexpand
set autorehash
limit coredumpsize 0

alias l			plfetch
alias cd..		cd ..
alias pkgsr		pkg search
alias ls		ls -GF
alias rm		rm -iv
alias cp		cp -iv
alias mv 		mv -iv
alias vi		$EDITOR
alias vim		$EDITOR
alias scrot		scrot -q 100 "/usr/home/fa2_l/Screenshots/screenshot-uncategorized-%d-%m-%y-%H-%M-%S.png"

[ $tty == "ttyv0" ] && startx
