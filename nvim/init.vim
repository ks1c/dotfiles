"Vundle plugin manager
set shell=/bin/zsh
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vifm/vifm.vim'
Plugin 'dracula/vim'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf.vim'
call vundle#end()
filetype plugin indent on

"Basic configuration
set nu rnu
set mouse=a
set wildmode=longest,list,full
set clipboard=unnamedplus
vnoremap <C-c> "+y
map <C-p> "+P
autocmd BufWritePre * %s/\s\+$//e
syntax on
colorscheme dracula
let g:lightline = { 'colorscheme': 'dracula' }
