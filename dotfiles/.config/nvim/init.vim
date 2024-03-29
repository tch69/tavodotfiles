"" .config/nvim/init.vim
"" Neovim config file

set bg=light
set encoding=utf-8
set mouse=a
set wildmode=longest,list,full

set smarttab
set ruler
set number relativenumber
set nobackup
set nocompatible
set backspace=indent,eol,start
set clipboard=unnamedplus

syntax on

autocmd VimLeave .Xresources !xrdb %
autocmd BufWritePre * %s/\s\+$//e

nnoremap SS :%s//g<Left><Left>
nnoremap XX :w!<Return>
