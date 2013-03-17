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

hi Normal       ctermfg=16 ctermbg=254

hi Repeat       ctermfg=24
hi Conditional  ctermfg=24

" {{{ Cursor
hi Cursor		ctermbg=239 ctermfg=231
hi CursorLine	ctermbg=253 ctermfg=none cterm=none
hi CursorColumn	ctermbg=255
" }}}

" {{{ Diff
hi DiffAdd         ctermfg=233 ctermbg=194 cterm=none
hi DiffChange                    ctermbg=255 cterm=none
hi DiffText        ctermfg=233 ctermbg=189 cterm=none
hi DiffDelete      ctermfg=252 ctermbg=224 cterm=none
" }}}

" {{{ Folding / Line Numbering / Status Lines
hi Folded		ctermbg=255 ctermfg=244 cterm=none
hi vimFold		ctermbg=255 ctermfg=244 cterm=none
hi FoldColumn	ctermbg=255 ctermfg=244 cterm=none

hi LineNr		ctermfg=246 ctermbg=255 cterm=none
hi NonText		ctermfg=244 ctermbg=255
hi Folded		ctermfg=244 ctermbg=255 cterm=none
hi FoldeColumn  ctermfg=244 ctermbg=255 cterm=none

hi VertSplit	ctermbg=250 ctermfg=250 cterm=none
hi StatusLine   ctermbg=250 ctermfg=238 cterm=none
hi StatusLineNC ctermbg=188 ctermfg=238 cterm=italic
" }}}

" {{{ Misc
hi ModeMsg		ctermfg=88
hi MoreMsg		ctermfg=88

hi Title		ctermfg=203
hi WarningMsg	ctermfg=203
hi SpecialKey   ctermfg=30 cterm=italic

hi MatchParen	ctermbg=189 ctermfg=16
hi Underlined	ctermfg=16 cterm=underline
hi Directory	ctermfg=88
" }}}

" {{{ Search, Visual, etc
hi Visual		ctermfg=231 ctermbg=61 cterm=none
hi VisualNOS    ctermfg=231 ctermbg=24 cterm=none
hi IncSearch	ctermbg=16 ctermfg=189 cterm=italic
hi Search		ctermbg=16 ctermfg=189 cterm=italic
" }}}

" {{{ Syntax groups
hi Ignore		ctermfg=244
hi Identifier	ctermfg=31
hi PreProc		ctermfg=247 cterm=none
hi Comment		ctermfg=245 ctermbg=none 
hi Constant		ctermfg=30 cterm=none
hi String		ctermfg=160
hi Function		ctermfg=88 cterm=none
hi Statement	ctermfg=88 cterm=None
hi Type			ctermfg=24 cterm=None
hi Number		ctermfg=30
"hi Todo         ctermbg=231 ctermfg=196 cterm=underline
hi Todo			ctermfg=231 ctermbg=88 cterm=none
hi Special		ctermfg=28 cterm=none
hi rubySymbol   ctermfg=89
hi Error        ctermbg=231 ctermfg=196 cterm=undercurl
hi Label        ctermfg=16 cterm=none
hi StorageClass ctermfg=16 cterm=none
hi Structure    ctermfg=88 cterm=none
hi TypeDef      ctermfg=16 cterm=none
" }}}

" {{{ Completion menus
hi WildMenu     ctermfg=111 ctermbg=60 cterm=none

hi Pmenu        ctermbg=244 ctermfg=231 cterm=none
hi PmenuSel     ctermbg=60 ctermfg=111 cterm=italic
hi PmenuSbar    ctermbg=16 ctermfg=238
hi PmenuThumb   ctermbg=248 ctermfg=248
" }}}

" {{{ Spelling
"hi spellBad     ctermsp=#fcaf3e
"hi spellCap     ctermsp=#73d216
"hi spellRare    ctermsp=#fcaf3e
"hi spellLocal   ctermsp=#729fcf
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

" {{{ Tabs (non-cterm0
hi TabLine		ctermfg=238 ctermbg=253 cterm=none
hi TabLineFill	ctermfg=238 ctermbg=253 cterm=none
hi TabLineSel	ctermfg=238 cterm=none
" }}}
"
" vim: sw=4 ts=4 foldmethod=marker
