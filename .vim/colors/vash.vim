" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Vasiliy Shlykov <v2sh@euro.ru>
" Last Change:	2003 Jan 13

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "vash"

hi Normal						guifg=lightgray	guibg=black
hi Comment	term=bold	ctermfg=DarkCyan	guifg=DeepSkyBlue
hi SpecialComment		ctermfg=Cyan		guifg=SpringGreen
hi Constant	term=underline	ctermfg=White		guifg=White

hi Identifier	term=underline	ctermfg=Cyan	guifg=Cyan
hi PreProc	term=underline	ctermfg=LightBlue	guifg=brown2
hi Include	term=underline	ctermfg=DarkBlue	guifg=brown2

hi String	term=underline	ctermfg=DarkCyan	guifg=GreenYellow
hi Special	term=bold		ctermfg=Red			guifg=Red
hi Statement	term=bold	ctermfg=Yellow		guifg=gold gui=bold
hi Keyword	term=bold	ctermfg=Yellow		guifg=gold gui=bold
hi Type		term=underline	ctermfg=White		guifg=White gui=bold

hi Function	term=bold	ctermfg=Cyan		guifg=Cyan
hi Ignore			ctermfg=black		guifg=black
hi Error	term=reverse	ctermbg=Red ctermfg=White	guibg=DarkRed guifg=White
hi Todo		term=standout	ctermbg=Yellow ctermfg=Black	guifg=gold guibg=blue3 gui=bold
hi Folded	guibg=bg
hi FoldColumn	guibg=bg gui=bold
hi StatusLine	guifg=DeepSkyBlue guibg=gray30 gui=NONE
hi StatusLineNC	guifg=MidnightBlue guibg=gray30 gui=NONE
hi Visual	guifg=black guibg=DarkGray gui=NONE
hi Search	guibg=gold
hi IncSearch	guifg=gold gui=reverse
hi WildMenu	guibg=gold

hi DiffText	guibg=brown3 gui=none
hi DiffDelete	guibg=gray40
hi DiffChange	guibg=SaddleBrown

hi link Character	String
hi link Number		Normal
hi link Float		Normal
hi link Boolean		Constant
hi link Conditional	Repeat
hi link Label		Keyword
hi link Define		PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link Repeat		Keyword
hi link Operator	Keyword
hi link Exception	Keyword
hi link StorageClass	Keyword
hi link Structure	Keyword
hi link Typedef		Type
hi link Tag		Special
hi link SpecialChar	SpecialComment
hi link Delimiter	Type
hi link Debug		Special
