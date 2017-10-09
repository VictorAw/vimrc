set nocompatible
set backspace=indent,eol,start

set number

" set cindent
filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab

set showcmd

set foldmethod=syntax

" set clipboard=unnamedplus

syntax enable
colorscheme delek
hi normal ctermbg=none
hi nontext ctermbg=none

map <space> za
map <F12> :w<cr>
iab #i #include

" Add a close curly brace and an empty line in between, set cursor at empty line
inoremap {<cr> <esc>:set<space>paste<cr>a{<cr>}<c-o>O<esc>:set<space>nopaste<cr>i<tab>
" Same as above, but with parenthesis
inoremap (<cr> <esc>:set<space>paste<cr>a(<cr>)<c-o>O<esc>:set<space>nopaste<cr>i<tab>

" Automated closing symbol additions
" Got annoying when modifying an existing string, so I removed them. Could be useful if you get used to it
" inoremap " ""<c-o>i
" inoremap ( ()<c-o>i

" Basic empty html page
" Indentation seems to work well when using a .html file due to filetype indent, but messes up if the file is untyped
inoremap <lt>html><cr> <lt>!DOCTYPE html><cr><lt>html><cr><lt>head><cr><lt>title><lt>/title><cr><lt>/head><cr><lt>body><cr><lt>/body><cr><lt>/html><cr><esc>6k^7l

