# .cshrc
# csh/tcsh config file

setenv EDITOR 	nvim
setenv PAGER	less

set path = ($path $HOME/.local/bin)
set prompt  = "%{\e[1;34m%}[%{\e[1;32m%}%n%{\e[1;33m%}@%{\e[1;31m%}%m %{\e[1;39m%}%~%{\e[1;34m%}]%{\e[1;39m%} %#%{\e[0;39m%} "
set promptchars = "%#"
set filec
set history = 1000
set savehist = (1000 merge)
set autolist = ambiguous
set autoexpand
set autorehash

alias l		~/.scripts/fetch.sh
alias cd..	cd ..
alias pkgsr	pkg search
alias ls	gls --color=auto
alias make	gmake
alias dlr	rm -rf
alias cp	cp -iv
alias mv 	mv -iv

if ($tty == 'ttyv0') then
	startx
endif
