set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
filetype plugin indent on

set number relativenumber
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
