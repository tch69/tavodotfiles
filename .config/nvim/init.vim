"" .config/nvim/init.vim
"" Neovim config file

set encoding=utf-8
set mouse=a
set wildmode=longest,list,full

set smarttab
set ruler
set number relativenumber
set nobackup
set nowritebackup

syntax on

autocmd VimLeave .Xresources !xrdb %
autocmd BufWritePre * %s/\s\+$//e

nnoremap SS :%s//g<Left><Left>
nnoremap ZX :w!<Return>
