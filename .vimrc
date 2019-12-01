set nocompatible

set number
set linebreak
set mouse=a
set tabstop=4
syntax on

" A syntax for placeholders
" Pressing Control-j jumps to the next match.
inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
map <Space><Tab> <Esc>/<++><Enter>"_c4l
