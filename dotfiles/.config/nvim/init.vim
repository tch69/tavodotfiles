"" .config/nvim/init.vim
"" Neovim config file

"" Appearance
colorscheme vim
set notermguicolors
set bg=dark
set number relativenumber
set ruler
syntax on

"" Functionalities
autocmd VimLeave .Xresources !xrdb %
autocmd BufWritePre * %s/\s\+$//e
nnoremap SS :%s//g<Left><Left>
nnoremap XX :w!<Return>

set backspace=indent,eol,start
set clipboard=unnamedplus
set encoding=utf-8
set list
set listchars=tab:›\ ,trail:‧
set mouse=a
set nobackup
set nocompatible
set smarttab
set wildmode=longest,list,full
