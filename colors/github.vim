" Vim color file
"
" Author: Anthony Carapetis <anthony.carapetis@gmail.com>
"
" Note: Based on github's syntax highlighting theme
"       Used Brian Mock's darkspectrum as a starting point/template
"       Thanks to Ryan Heath for an easy list of some of the colours:
"       http://rpheath.com/posts/356-github-theme-for-syntax-gem

hi clear 

set background=light
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear 
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="github"

hi Normal       guifg=#000000 guibg=#e3e3e9 ctermfg=16 ctermbg=254

hi Repeat       guifg=#174b80 ctermfg=24
hi Conditional  guifg=#174b80 ctermfg=24

" {{{ Cursor
hi Cursor		guibg=#444454 guifg=#F8F8FF ctermbg=239 ctermfg=231
hi CursorLine	guibg=#D8D8DD ctermbg=253 ctermfg=none cterm=none
hi CursorColumn	guibg=#E8E8EE ctermbg=255
" }}}

" {{{ Diff
hi DiffAdd         guifg=#003300 guibg=#DDFFDD gui=none ctermfg=233 ctermbg=194 cterm=none
hi DiffChange                    guibg=#ececec gui=none ctermbg=255 cterm=none
hi DiffText        guifg=#000033 guibg=#DDDDFF gui=none ctermfg=233 ctermbg=189 cterm=none
hi DiffDelete      guifg=#DDCCCC guibg=#FFDDDD gui=none ctermfg=252 ctermbg=224 cterm=none
" }}}

" {{{ Folding / Line Numbering / Status Lines
hi Folded		guibg=#ECECEC guifg=#808080 gui=none ctermbg=255 ctermfg=244 cterm=none
hi vimFold		guibg=#ECECEC guifg=#808080 gui=none ctermbg=255 ctermfg=244 cterm=none
hi FoldColumn	guibg=#ECECEC guifg=#808080 gui=none ctermbg=255 ctermfg=244 cterm=none

hi LineNr		guifg=#959595 guibg=#ECECEC gui=none ctermfg=246 ctermbg=255 cterm=none
hi NonText		guifg=#808080 guibg=#ECECEC ctermfg=244 ctermbg=255
hi Folded		guifg=#808080 guibg=#ECECEC gui=none ctermfg=244 ctermbg=255 cterm=none
hi FoldeColumn  guifg=#808080 guibg=#ECECEC gui=none ctermfg=244 ctermbg=255 cterm=none

hi VertSplit	guibg=#bbbbbb guifg=#bbbbbb gui=none ctermbg=250 ctermfg=250 cterm=none
hi StatusLine   guibg=#bbbbbb guifg=#404040 gui=none ctermbg=250 ctermfg=238 cterm=none
hi StatusLineNC guibg=#d4d4d4 guifg=#404040 gui=italic ctermbg=188 ctermfg=238 cterm=italic
" }}}

" {{{ Misc
hi ModeMsg		guifg=#990000 ctermfg=88
hi MoreMsg		guifg=#990000 ctermfg=88

hi Title		guifg=#ef5939 ctermfg=203
hi WarningMsg	guifg=#ef5939 ctermfg=203
hi SpecialKey   guifg=#177F80 gui=italic ctermfg=30 cterm=italic

hi MatchParen	guibg=#cdcdfd guifg=#000000 ctermbg=189 ctermfg=16
hi Underlined	guifg=#000000 gui=underline ctermfg=16 cterm=underline
hi Directory	guifg=#990000 ctermfg=88
" }}}

" {{{ Search, Visual, etc
hi Visual		guifg=#FFFFFF guibg=#3465a4 gui=none ctermfg=231 ctermbg=61 cterm=none
hi VisualNOS    guifg=#FFFFFF guibg=#204a87 gui=none ctermfg=231 ctermbg=24 cterm=none
hi IncSearch	guibg=#cdcdfd guifg=#000000 gui=italic ctermbg=16 ctermfg=189 cterm=italic
hi Search		guibg=#cdcdfd guifg=#000000 gui=italic ctermbg=16 ctermfg=189 cterm=italic
" }}}

" {{{ Syntax groups
hi Ignore		guifg=#808080 ctermfg=244
hi Identifier	guifg=#0086B3 ctermfg=31
hi PreProc		guifg=#A0A0A0 gui=none ctermfg=247 cterm=none
hi Comment		guifg=#999988 gui=italic ctermfg=245 ctermbg=none
hi Constant		guifg=#177F80 gui=none ctermfg=30 cterm=none
hi String		guifg=#D81745 ctermfg=160
hi Function		guifg=#990000 gui=none ctermfg=88 cterm=none
hi Statement	guifg=#990000 gui=None ctermfg=88 cterm=None
hi Type			guifg=#12568f gui=None ctermfg=24 cterm=None
hi Number		guifg=#1C9898 ctermfg=30
"hi Todo         guibg=#f8f8ff guifg=#ff1100 gui=underline
hi Todo			guifg=#FFFFFF guibg=#990000 gui=italic ctermfg=231 ctermbg=88 cterm=none
hi Special		guifg=#159828 gui=none ctermfg=28 cterm=none
hi rubySymbol   guifg=#960B73 ctermfg=89
hi Error        guibg=#f8f8ff guifg=#ff1100 gui=undercurl ctermbg=231 ctermfg=196 cterm=undercurl
hi Label        guifg=#000000 gui=none ctermfg=16 cterm=none
hi StorageClass guifg=#000000 gui=none ctermfg=16 cterm=none
hi Structure    guifg=#990000 gui=none ctermfg=88 cterm=none
hi TypeDef      guifg=#000000 gui=none ctermfg=16 cterm=none
" }}}

" {{{ Completion menus
hi WildMenu     guifg=#7fbdff guibg=#425c78 gui=none ctermfg=111 ctermbg=60 cterm=none

hi Pmenu        guibg=#808080 guifg=#ffffff gui=none ctermbg=244 ctermfg=231 cterm=none
hi PmenuSel     guibg=#cdcdfd guifg=#000000 gui=italic ctermbg=60 ctermfg=111 cterm=italic
hi PmenuSbar    guibg=#000000 guifg=#444444 ctermbg=16 ctermfg=238
hi PmenuThumb   guibg=#aaaaaa guifg=#aaaaaa ctermbg=248 ctermfg=248
" }}}

" {{{ Spelling
hi spellBad     guisp=#fcaf3e 
hi spellCap     guisp=#73d216
hi spellRare    guisp=#fcaf3e
hi spellLocal   guisp=#729fcf
" }}}

" {{{ Aliases
hi link cppSTL          Function
hi link cppSTLType      Type
hi link Character		Number
hi link htmlTag			htmlEndTag
"hi link htmlTagName     htmlTag
hi link htmlLink		Underlined
hi link pythonFunction	Identifier
hi link Question		Type
hi link CursorIM		Cursor
hi link VisualNOS		Visual
hi link xmlTag			Identifier
hi link xmlTagName		Identifier
hi link shDeref			Identifier
hi link shVariable		Function
hi link rubySharpBang	Special
hi link perlSharpBang	Special
hi link schemeFunc      Statement
"hi link shSpecialVariables Constant
"hi link bashSpecialVariables Constant
" }}}

" {{{ Tabs (non-gui0
hi TabLine		guifg=#404040 guibg=#dddddd gui=none ctermfg=238 ctermbg=253 cterm=none
hi TabLineFill	guifg=#404040 guibg=#dddddd gui=none ctermfg=238 ctermbg=253 cterm=none
hi TabLineSel	guifg=#404040 gui=none ctermfg=238 cterm=none
" }}}
"
" vim: sw=4 ts=4 foldmethod=marker
