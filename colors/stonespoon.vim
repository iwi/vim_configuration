" Maintainer:   Arnau Siches <http://github.com/arnau/>
" Version:      0.1
" Last Change:  May 23rd, 2015

" Copyright (c) 2015 Arnau Siches

" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "stonespoon"
set background=dark


hi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=231
hi Boolean term=bold cterm=NONE ctermbg=bg ctermfg=154
hi Character term=NONE cterm=NONE ctermbg=bg ctermfg=155
hi ColorColumn term=NONE cterm=NONE ctermbg=0 ctermfg=fg
hi Comment term=bold cterm=NONE ctermbg=bg ctermfg=244
hi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252
hi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=197
hi Constant term=NONE cterm=NONE ctermbg=bg ctermfg=197
hi Cursor term=NONE cterm=NONE ctermbg=238 ctermfg=299
hi CursorColumn term=NONE cterm=NONE ctermbg=238 ctermfg=229
hi CursorLine term=NONE cterm=NONE ctermbg=238 ctermfg=229
hi CursorLineNr term=bold cterm=NONE ctermbg=bg ctermfg=81
hi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=145
hi Define term=NONE cterm=NONE ctermbg=bg ctermfg=81
hi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=245
hi DiffAdd term=bold cterm=NONE ctermbg=16 ctermfg=154
hi DiffChange term=bold cterm=NONE ctermbg=16 ctermfg=215
hi DiffDelete term=bold cterm=bold ctermbg=16 ctermfg=196
hi DiffText term=reverse cterm=NONE ctermbg=59 ctermfg=fg
hi Directory term=bold cterm=NONE ctermbg=bg ctermfg=248
hi Error term=reverse cterm=NONE ctermbg=197 ctermfg=231
hi ErrorMsg term=NONE cterm=NONE ctermbg=235 ctermfg=117
hi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=186
hi Float term=bold cterm=NONE ctermbg=bg ctermfg=155
hi FoldColumn term=NONE cterm=NONE ctermbg=16 ctermfg=59
hi Folded term=NONE cterm=NONE ctermbg=16 ctermfg=59
hi Function term=NONE cterm=NONE ctermbg=bg ctermfg=81
hi Identifier term=NONE cterm=NONE ctermbg=bg ctermfg=81
hi Ignore term=NONE cterm=NONE ctermbg=234 ctermfg=244
hi IncSearch term=reverse cterm=reverse ctermbg=155 ctermfg=16
hi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=81
hi Label term=NONE cterm=NONE ctermbg=bg ctermfg=81
hi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=59
hi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=227
hi MatchParen term=reverse cterm=NONE ctermbg=238 ctermfg=145
hi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=227
hi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=227
hi NonText term=bold cterm=bold ctermbg=bg ctermfg=59
hi Number term=bold cterm=NONE ctermbg=bg ctermfg=227
hi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=197
hi Pmenu term=NONE cterm=NONE ctermbg=16 ctermfg=197
hi PmenuSbar term=NONE cterm=NONE ctermbg=232 ctermfg=fg
hi PmenuSel term=NONE cterm=NONE ctermbg=244 ctermfg=fg
hi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=81
hi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=227
hi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=227
hi Question term=NONE cterm=bold ctermbg=bg ctermfg=81
hi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=117
hi Search term=reverse cterm=NONE ctermbg=155 ctermfg=16
hi SignColumn term=NONE cterm=NONE ctermbg=235 ctermfg=186
hi Special term=bold cterm=NONE ctermbg=234 ctermfg=81
hi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=117
hi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=244
hi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=59
hi SpellBad term=bold cterm=NONE ctermbg=16 ctermfg=196
hi SpellCap term=bold cterm=NONE ctermbg=16 ctermfg=154
hi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=87
hi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=231
hi Statement term=bold cterm=NONE ctermbg=bg ctermfg=227
hi StatusLine term=bold cterm=NONE ctermbg=bg ctermfg=81
hi StatusLineNC term=reverse cterm=reverse ctermbg=244 ctermfg=232
hi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=81
hi String term=NONE cterm=NONE ctermbg=bg ctermfg=229
hi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=197
hi TabLine term=underline cterm=NONE ctermbg=234 ctermfg=244
hi TabLineFill term=reverse cterm=reverse ctermbg=234 ctermfg=234
hi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg
hi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=81
hi Title term=bold cterm=NONE ctermbg=bg ctermfg=81
hi Todo term=NONE cterm=NONE ctermbg=bg ctermfg=197
hi Type term=underline cterm=NONE ctermbg=bg ctermfg=197
hi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=81
hi Underlined term=underline cterm=underline ctermbg=bg ctermfg=229
hi VertSplit term=reverse cterm=reverse ctermbg=244 ctermfg=232
hi Visual term=NONE cterm=NONE ctermbg=238 ctermfg=fg
hi VisualNOS term=NONE cterm=NONE ctermbg=238 ctermfg=fg
hi WarningMsg term=NONE cterm=NONE ctermbg=238 ctermfg=231
hi WildMenu term=NONE cterm=NONE ctermbg=16 ctermfg=81
hi iCursor term=NONE cterm=NONE ctermbg=bg ctermfg=81

" HTML/Markdown {{{
hi! link htmlItalic String
hi! link htmlBold Title
hi! link htmlUnderline Underlined
hi markdownCodeBlock term=NONE cterm=NONE ctermbg=236 ctermfg=250
" }}}

" N3/Turtle {{{
hi n3URI term=NONE cterm=NONE ctermbg=bg ctermfg=227
hi n3PropertyName term=NONE cterm=NONE ctermbg=bg ctermfg=81
hi! link n3Prefix Normal

hi! link n3Datatype Constant
hi! link n3EndStatement Normal
hi! link n3Langcode Constant
hi! link n3Number String
hi! link n3Separator Normal
hi! link n3String String
hi! link n3StringDelim StringDelimiter
hi! link n3XMLLiteralRegion String
" }}}
