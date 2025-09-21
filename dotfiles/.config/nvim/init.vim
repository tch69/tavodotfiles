"" .config/nvim/init.vim
"
" This config shall never be split into multiple files.
" An editor never need that much attention.
"
" On vim, comment out/remove the colorscheme line.
"

" Appearance
colorscheme vim
syntax on

set notermguicolors
set noshowmode
set bg=dark
set number relativenumber
set ruler

" Behaviors
set backspace=indent,eol,start
set clipboard=unnamedplus
set encoding=utf-8
set nohlsearch
set incsearch
set list
set listchars=tab:›\ ,trail:‧
set mouse=a
set nobackup
set nocompatible
set smarttab
set wildmode=longest,list,full

autocmd VimLeave .Xresources !xrdb %
autocmd BufWritePre * %s/\s\+$//e

" Keybinds
nnoremap SS :%s//g<Left><Left>
nnoremap XX :w!<Return>

" Statusline
function! ShowMode()
	let l:mode = mode()

	if l:mode ==# 'n'
		return 'normal'
	elseif l:mode ==# 'i'
		return 'insert'
	elseif l:mode ==# 'v'
		return 'visual'
	elseif l:mode ==# 'V'
		return 'visual_l'
	elseif l:mode ==# "\<C-v>"
		return 'visual_b'
	elseif l:mode ==# 'c'
		return 'command'
	elseif l:mode ==# 'R'
		return 'replace'
	else
		return l:mode
	endif
endfunction

set statusline=\ %{ShowMode()}
set statusline+=\ %#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=\ %m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ |
