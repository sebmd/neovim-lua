" source $VIMRUNTIME/defaults.vim
" "filetype plugin indent on
syntax on
" set ft=man
set syntax=man
" colo industry
set buftype=nofile
" set buftype=nowrite
set nomodifiable
set nocompatible
set nolist
set hidden
" set tabline=terefere
" set showtabline=0
set laststatus=0
set background=dark
set termguicolors
set timeout
set timeoutlen=10
colo ayu

" let ayucolor="light"  " for light version of theme
let ayucolor="mirage"  " light, mirage, dark
" let ayucolor="dark"  " light, mirage, dark

" mapowanie klawiszy
nnoremap q :qa!<cr>
nmap Q :qa!<cr>
map n nzz
map N Nzz
map d <c-d>
map u <c-u>
map g gg
map <space> <c-d>
map <backspace> <c-u>
