" Vim color file
" Converted from Textmate theme Afterglow - Monokai using Coloration v0.3.3 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "afterglow"

hi Cursor ctermfg=236 ctermbg=15 cterm=NONE guifg=#2e2e2e guibg=#ffffff gui=NONE
hi Visual ctermfg=NONE ctermbg=60 cterm=NONE guifg=NONE guibg=#5a647e gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3f3f3f gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3f3f3f gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3f3f3f gui=NONE
hi LineNr ctermfg=244 ctermbg=237 cterm=NONE guifg=#828282 guibg=#3f3f3f gui=NONE
hi VertSplit ctermfg=241 ctermbg=241 cterm=NONE guifg=#5f5f5f guibg=#5f5f5f gui=NONE
hi MatchParen ctermfg=132 ctermbg=NONE cterm=underline guifg=#b05279 guibg=NONE gui=underline
hi StatusLine ctermfg=253 ctermbg=241 cterm=bold guifg=#d6d6d6 guibg=#5f5f5f gui=bold
hi StatusLineNC ctermfg=253 ctermbg=241 cterm=NONE guifg=#d6d6d6 guibg=#5f5f5f gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=60 cterm=NONE guifg=NONE guibg=#5a647e gui=NONE
hi IncSearch ctermfg=236 ctermbg=179 cterm=NONE guifg=#2e2e2e guibg=#e5b567 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=140 ctermbg=NONE cterm=NONE guifg=#9e86c8 guibg=NONE gui=NONE
hi Folded ctermfg=243 ctermbg=236 cterm=NONE guifg=#797979 guibg=#2e2e2e gui=NONE

hi Normal ctermfg=253 ctermbg=236 cterm=NONE guifg=#d6d6d6 guibg=#2e2e2e gui=NONE
hi Boolean ctermfg=140 ctermbg=NONE cterm=NONE guifg=#9e86c8 guibg=NONE gui=NONE
hi Character ctermfg=140 ctermbg=NONE cterm=NONE guifg=#9e86c8 guibg=NONE gui=NONE
hi Comment ctermfg=243 ctermbg=NONE cterm=NONE guifg=#797979 guibg=NONE gui=NONE
hi Conditional ctermfg=132 ctermbg=NONE cterm=NONE guifg=#b05279 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=132 ctermbg=NONE cterm=NONE guifg=#b05279 guibg=NONE gui=NONE
hi DiffAdd ctermfg=253 ctermbg=64 cterm=bold guifg=#d6d6d6 guibg=#48840e gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8c0909 guibg=NONE gui=NONE
hi DiffChange ctermfg=253 ctermbg=23 cterm=NONE guifg=#d6d6d6 guibg=#273c5b gui=NONE
hi DiffText ctermfg=253 ctermbg=24 cterm=bold guifg=#d6d6d6 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=132 cterm=NONE guifg=#f8f8f0 guibg=#b05279 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=132 cterm=NONE guifg=#f8f8f0 guibg=#b05279 gui=NONE
hi Float ctermfg=140 ctermbg=NONE cterm=NONE guifg=#9e86c8 guibg=NONE gui=NONE
hi Function ctermfg=149 ctermbg=NONE cterm=NONE guifg=#b4c973 guibg=NONE gui=NONE
hi Identifier ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=italic
hi Keyword ctermfg=132 ctermbg=NONE cterm=NONE guifg=#b05279 guibg=NONE gui=NONE
hi Label ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e5b567 guibg=NONE gui=NONE
hi NonText ctermfg=238 ctermbg=237 cterm=NONE guifg=#404040 guibg=#363636 gui=NONE
hi Number ctermfg=140 ctermbg=NONE cterm=NONE guifg=#9e86c8 guibg=NONE gui=NONE
hi Operator ctermfg=132 ctermbg=NONE cterm=NONE guifg=#b05279 guibg=NONE gui=NONE
hi PreProc ctermfg=132 ctermbg=NONE cterm=NONE guifg=#b05279 guibg=NONE gui=NONE
hi Special ctermfg=253 ctermbg=NONE cterm=NONE guifg=#d6d6d6 guibg=NONE gui=NONE
hi SpecialKey ctermfg=238 ctermbg=237 cterm=NONE guifg=#404040 guibg=#3f3f3f gui=NONE
hi Statement ctermfg=132 ctermbg=NONE cterm=NONE guifg=#b05279 guibg=NONE gui=NONE
hi StorageClass ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=italic
hi String ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e5b567 guibg=NONE gui=NONE
hi Tag ctermfg=132 ctermbg=NONE cterm=NONE guifg=#b05279 guibg=NONE gui=NONE
hi Title ctermfg=253 ctermbg=NONE cterm=bold guifg=#d6d6d6 guibg=NONE gui=bold
hi Todo ctermfg=243 ctermbg=NONE cterm=inverse,bold guifg=#797979 guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=132 ctermbg=NONE cterm=NONE guifg=#b05279 guibg=NONE gui=NONE
hi rubyFunction ctermfg=149 ctermbg=NONE cterm=NONE guifg=#b4c973 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=140 ctermbg=NONE cterm=NONE guifg=#9e86c8 guibg=NONE gui=NONE
hi rubyConstant ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e5b567 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=173 ctermbg=NONE cterm=NONE guifg=#e87d3e guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=132 ctermbg=NONE cterm=NONE guifg=#b05279 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e5b567 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e5b567 guibg=NONE gui=NONE
hi rubyEscape ctermfg=140 ctermbg=NONE cterm=NONE guifg=#9e86c8 guibg=NONE gui=NONE
hi rubyControl ctermfg=132 ctermbg=NONE cterm=NONE guifg=#b05279 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=132 ctermbg=NONE cterm=NONE guifg=#b05279 guibg=NONE gui=NONE
hi rubyException ctermfg=132 ctermbg=NONE cterm=NONE guifg=#b05279 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=243 ctermbg=NONE cterm=NONE guifg=#797979 guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=140 ctermbg=NONE cterm=NONE guifg=#9e86c8 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=132 ctermbg=NONE cterm=NONE guifg=#b05279 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e5b567 guibg=NONE gui=NONE
hi cssURL ctermfg=173 ctermbg=NONE cterm=NONE guifg=#e87d3e guibg=NONE gui=italic
hi cssFunctionName ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi cssColor ctermfg=140 ctermbg=NONE cterm=NONE guifg=#9e86c8 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=149 ctermbg=NONE cterm=NONE guifg=#b4c973 guibg=NONE gui=NONE
hi cssClassName ctermfg=149 ctermbg=NONE cterm=NONE guifg=#b4c973 guibg=NONE gui=NONE
hi cssValueLength ctermfg=140 ctermbg=NONE cterm=NONE guifg=#9e86c8 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6c99bb guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
