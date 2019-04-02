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


