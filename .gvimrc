set nocompatible

set ttyfast
syntax on
colorscheme vash
set bs=2			" allow backspacing over everything in insert mode
"set backup			" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
						" than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler			" show the cursor position all the time
set vb
"set tags=./.tags,./*/.tags
set path=.,./**/include,/usr/include,/usr/include/g++-3,/usr/*/include,/usr/lib/gcc-lib/ginc
set autoread
set autowrite
"set ts=8
"set sts=4
"set ai				" always set autoindenting on
"set cindent
"set shiftwidth=4
"set cino=^-.5s,{.5s,=10,g0,t0
"set errorbells=0
"set go-=r
"set go-=T
set novb
"set guifont=Bitstream\ Vera\ Sans\ Mono\ Bold\ 14
"set guifont=Lucida\ Console\ Bold\ 12
set guifont=DejaVu\ Sans\ Mono\ 11


