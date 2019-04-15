"Vundle plugin manager
set shell=/bin/bash
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mboughaba/i3config.vim'
call vundle#end()
filetype plugin indent on

"Basic configuration
set number
set mouse=a
"set bg=light
set wildmode=longest,list,full
set clipboard=unnamedplus
vnoremap <C-c> "+y
map <C-p> "+P
autocmd BufWritePre * %s/\s\+$//e
syntax on


