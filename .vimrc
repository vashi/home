set nocompatible

set ttyfast
syntax on
colorscheme vash
"set keymap=russian-jcuken
set bs=2			" allow backspacing over everything in insert mode
"set backup			" keep a backup file
set viminfo='20,\"50		" read/write a .viminfo file, don't store more
						" than 50 lines of registers
set history=50			" keep 50 lines of command line history
set ruler			" show the cursor position all the time
set vb
set tags=.tags,../.tags,./*/.tags
set path=.,./**/include,/usr/include,/usr/include/g++-3,/usr/*/include,/usr/lib/gcc-lib/ginc
set autoread
set autowrite
set ts=8
set sts=4
set ai				" always set autoindenting on
"set cindent
set shiftwidth=4
set cino=^-.5s,{.5s,=10,g0,t0
"set errorbells=0
set langmap=Êq,Ãw,Õe,Ër,Åt,Îy,Çu,Ûi,Ýo,Úp,È[,ß],Æa,Ùs,×d,Áf,Ðg,Òh,Ïj,Ìk,Äl,Ñz,Þx,Óc,Ív,Éb,Ôn,Øm
"set encoding=utf-8

"Doxygen plugin
let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_authorName = "Vasiliy Shlykov (AKA VaSh)"
let g:DoxygenToolkit_briefTag = "\brief "
let g:DoxygenToolkit_paramTag = "\param "
let g:DoxygenToolkit_returnTag = "\return "
let g:DoxygenToolkit_authorTag = "\author "
let g:DoxygenToolkit_fileTag = "\file "

" Folding
set foldmethod=marker
highlight Folded ctermfg=DarkCyan


set foldtext=MyFoldText()
func MyFoldText()
	let startline = substitute(getline(v:foldstart), '//\ \?\|/\*\ \?\|\*/\|{{{\d\=', '', 'g')
	let endline = substitute(getline(v:foldend), '//\ \?\|/\*\ \?\|\*/\|}}}\d\=', '', 'g')  
	let sub = startline
	if endline != ""
		let sub = sub . "..." . endline
	endif
	let sub = sub . " --- lines: " . (v:foldend - v:foldstart)
	return v:folddashes . " " . sub . " "
endfunc
			

map <F2> <Esc>:w<Enter>
imap <F2> <Esc>:w<Enter>i
map <F10> <Esc>:q<Enter>
"imap <F10> <Esc>:q<Enter>
map <C-F10> <Esc>:q!<Enter>
map <F8> <Esc>:A<Enter>
imap <F7> <Esc>F li<code><Esc>f i</code>
map <F7> F li<code><Esc>f i</code><Esc>

map <F9> <Esc>:w<CR><Esc>:make<CR>
imap <F9> <Esc>:w<CR><Esc>:make<CR>
nmap <C-L> <Esc>:cnext<CR>
imap <C-L> <Esc>:cnext<CR>i
nmap <C-H> <Esc>:cprevious<CR>
imap <C-H> <Esc>:cprevious<CR>i

"nmap <M-1> <Esc>:buffer 1<CR>
"imap <M-1> <Esc>:buffer 1<CR>i
"nmap <M-2> <Esc>:buffer 2<CR>
"imap <M-2> <Esc>:buffer 2<CR>i
"nmap <M-3> <Esc>:buffer 3<CR>
"imap <M-3> <Esc>:buffer 3<CR>i
"nmap <M-4> <Esc>:buffer 4<CR>
"imap <M-4> <Esc>:buffer 4<CR>i
"nmap <M-5> <Esc>:buffer 5<CR>
"imap <M-5> <Esc>:buffer 5<CR>i
"nmap <M-6> <Esc>:buffer 6<CR>
"imap <M-6> <Esc>:buffer 6<CR>i
"nmap <M-7> <Esc>:buffer 7<CR>
"imap <M-7> <Esc>:buffer 7<CR>i
"nmap <M-8> <Esc>:buffer 8<CR>
"imap <M-8> <Esc>:buffer 8<CR>i
"nmap <M-9> <Esc>:buffer 9<CR>
"imap <M-9> <Esc>:buffer 9<CR>i


"imap <C-F10> <Esc>:q!<Enter>


nmap <Enter> 0ye<C-W>w:ptag <C-R><Enter>

set whichwrap=b,s,<,>,[,]

" Don't use Ex mode, use Q for formatting
map Q gq

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
"if &t_Co > 2 || has("gui_running")
"  set hlsearch
"endif

func PreviewWord()
	if &previewwindow			" don't do this in the preview window
		return
	endif
	
	let w = expand("<cword>")	" get the word under cursor
 	if w != ""					" if there is one ":ptag" to it

		" Delete any existing highlight before showing another tag
		silent! wincmd P			" jump to preview window
			if &previewwindow		" if we really get there...
				match none			" delete existing highlight
				wincmd p			" back to old window
			endif
 	
		" Try displaying a matching tag for the word under the cursor
 		let v:errmsg = ""
 		exe "silent! ptag " . w
 		if v:errmsg =~ "tag not found"
 			return
		endif

		silent! wincmd P			" jump to preview window
		if &previewwindow			" if we really get there...
			if has("folding")
 				silent! .foldopen	" don't want a closed fold
 			endif
			
			call search("$", "b")	" to end of previous line
 			let w = substitute(w, '\\', '\\\\', "")
 			call search('\<\V' . w . '\>')	" position cursor on match
 
 			" Add a match highlight to the word at this position
			hi previewWord term=bold ctermbg=darkgreen guibg=green
			exe 'match previewWord "\%' . line(".") . 'l\%' . col(".") . 'c\k*"'
			wincmd p			" back to old window
		endif
	endif
endfun

"au! CursorHold *.\([ch]\|cc\|cpp\) nested call PreviewWord()

map <F12> <Esc>:au! CursorHold *.\([ch]\\|cc\\|cpp\) nested call PreviewWord()<CR>
imap <F12> <Esc>:au! CursorHold *.\([ch]\\|cc\\|cpp\) nested call PreviewWord()<CR>
map <F11> <Esc>:au! CursorHold<CR>
imap <F11> <Esc>:au! CursorHold<CR>

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  autocmd BufRead,BufNewFile *.c*,*.h,*.hpp set et!
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
  

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

