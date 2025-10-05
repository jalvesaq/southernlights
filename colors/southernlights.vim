" Vim color scheme
"
" Name:        southernlights.vim
" Maintainer:  Jakson Aquino
" Last Change: Sun Sep 28, 2025  08:31AM
" License:     GNU/GPL
"
" Based on other color schemes. The starting point was 'torte'

if has("nvim")
  lua require("southernlights").load()
  finish
endif

if &t_Co < 256 || $TERM == "linux"
    finish
endif

hi clear
if exists("syntax_on")
  syntax reset
endif


let colors_name = "southernlights"

set background=dark

" Normal must be defined first
hi Normal	ctermfg=253	ctermbg=16	guifg=#dadada	guibg=#000000
hi NormalFloat	ctermfg=253	ctermbg=237	guifg=#dadada	guibg=#3a3a3a

hi Boolean	ctermfg=209	guifg=#ff875f
hi Character	ctermfg=223	guifg=#ffd7af
hi Comment	ctermfg=147	guifg=#afafff
hi Constant	ctermfg=194	guifg=#d7ffd7
hi Conceal	ctermfg=221	ctermbg=16	guifg=#ffd75f	guibg=#000000
hi Conditional  ctermfg=228     guifg=#ffff87
hi Repeat       ctermfg=192     guifg=#d7ff87
hi Label        ctermfg=191     guifg=#d7ff5f
hi Keyword      ctermfg=193     guifg=#d7ffaf
hi Cursor	ctermfg=16	ctermbg=28	cterm=bold	guifg=#000000	guibg=#00ff00	gui=bold
hi CursorLine	ctermbg=235	cterm=NONE	guibg=#262626	gui=NONE
hi CursorColumn	ctermbg=235	cterm=NONE	guibg=#262626	gui=NONE
hi ColorColumn	ctermbg=235	cterm=NONE	guibg=#262626	gui=NONE
hi DiffAdd	ctermfg=227	ctermbg=22	guifg=#ffff5f	guibg=#005f00
hi DiffDelete	ctermfg=227	ctermbg=88	guifg=#ffff5f	guibg=#870000
hi DiffChange	ctermfg=227	ctermbg=58	guifg=#ffff5f	guibg=#5f5f00
hi DiffText	ctermfg=227	ctermbg=88	guifg=#ffff5f	guibg=#870000	cterm=NONE	gui=NONE
hi EndOfBuffer  ctermfg=19	guifg=#0000af
hi Emphasis	gui=italic
hi Strong	gui=bold
hi Exception	gui=NONE guifg=#eecc00
hi Error	ctermfg=231	cterm=NONE	ctermbg=196	gui=NONE	guifg=#ffffff	guibg=#ff0000
hi Directory	ctermfg=39	guifg=#00afff
hi Folded	ctermfg=86	ctermbg=240	guifg=#00ffff	guibg=#585858
hi FoldColumn	ctermfg=86	ctermbg=240	guifg=#00ffff	guibg=#585858
hi Function	ctermfg=117	guifg=#87d7ff
hi Method	guifg=#87d7ff gui=italic
hi Identifier	ctermfg=86	cterm=NONE	guifg=#5fffd7	gui=NONE
hi Variable	ctermfg=86	cterm=NONE	guifg=#bffce8	gui=NONE
hi Ignore       ctermfg=242     cterm=NONE      guifg=#6c6c6c   gui=NONE
hi Include	ctermfg=219	cterm=NONE	guifg=#ffafff	gui=NONE
hi LineNr	ctermfg=16	ctermbg=240	guifg=#000000	guibg=#585858
hi CursorLineNr	ctermfg=16	ctermbg=243	guifg=#000000	guibg=#585858
hi MatchParen	ctermfg=231	ctermbg=58	guifg=#ffffff	guibg=#5f5f00
hi NonText	ctermfg=21	guifg=#0000ff	term=NONE	gui=NONE
hi Number	ctermfg=223	guifg=#ffd7af
hi link Float Number
hi MoreMsg	ctermfg=36	guifg=#00af87
hi ModeMsg	ctermfg=253	guifg=#dadada
hi Operator	ctermfg=208	guifg=#ff8700
hi Pmenu	ctermfg=249	ctermbg=235	guifg=#b2b2b2	guibg=#262626
hi PmenuSel	ctermfg=255	ctermbg=237	guifg=#eeeeee	guibg=#3a3a3a
hi PmenuSbar	ctermbg=240	guibg=#585858
hi PmenuThumb	ctermbg=243	guibg=#767676
hi PreProc	ctermfg=207	ctermbg=NONE	guifg=#ff5fff
hi Question	ctermfg=115	guifg=#87d7af
hi QuickFixLine	ctermfg=231	ctermbg=23	guifg=#ffffff	guibg=#005f5f
hi Quote	guifg=#ffffc0
hi Search	ctermfg=231	ctermbg=58	guifg=#ffffff	guibg=#5f5f00
hi IncSearch	ctermfg=231	ctermbg=58	guifg=#ffffff	guibg=#5f5f00
hi SignColumn	ctermfg=227	ctermbg=240	guifg=#ffff5f	guibg=#585858
hi Special	ctermfg=221	guifg=#ffd75f
hi Delimiter	ctermfg=221	guifg=#ffd75f
hi SpecialKey	ctermfg=86	guifg=#00ffff

if has('gui_running')
    " Add to your ~/tmux.conf
    " set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'
    " set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'
    hi SpellBad		guisp=#ff0000	gui=undercurl
    hi SpellLocal	guisp=#00ff00	gui=undercurl
    hi SpellRare	guisp=#ff00ff	gui=undercurl
    hi SpellCap		guisp=#00ffff	gui=undercurl
else
    hi SpellBad		ctermfg=196	ctermbg=NONE	cterm=underline	guifg=#ff0000	gui=underline
    hi SpellLocal	ctermfg=28	ctermbg=NONE	cterm=underline	guifg=#00AA00	gui=underline
    hi SpellRare	ctermfg=201	ctermbg=NONE	cterm=underline	guifg=#ff00ff	gui=underline
    hi SpellCap		ctermfg=33	ctermbg=NONE	cterm=underline	guifg=#0087ff	gui=underline
endif

hi Statement		ctermfg=226	guifg=#ffff00	cterm=NONE	gui=NONE
hi StatusLine		ctermfg=16	ctermbg=239	guifg=#000000	guibg=#4e4e4e	cterm=NONE	gui=NONE
hi StatusLineTerm	ctermfg=16	ctermbg=239	guifg=#000000	guibg=#4e4e4e	cterm=NONE	gui=NONE
hi StatusLineNC		ctermfg=16	ctermbg=240	guifg=#000000	guibg=#585858	cterm=NONE	gui=NONE
hi StatusLineTermNC	ctermfg=16	ctermbg=240	guifg=#000000	guibg=#585858	cterm=NONE	gui=NONE

hi VertSplit	ctermfg=240	ctermbg=240	guifg=#585858	guibg=#585858	cterm=NONE	gui=NONE
hi WinSeparator	ctermfg=240	ctermbg=16	guifg=#585858	guibg=#000000	cterm=NONE	gui=NONE
hi TabLineSel	ctermfg=16	ctermbg=244	guifg=#000000	guibg=#808080	cterm=NONE	gui=NONE
hi TabLine	ctermfg=16	ctermbg=240	guifg=#000000	guibg=#585858	cterm=NONE	gui=NONE
hi TabLineFill	ctermfg=16	ctermbg=235	guifg=#000000	guibg=#262626	cterm=NONE	gui=NONE
hi Todo		ctermfg=16	ctermbg=226	guifg=#000000	guibg=#ffff00	cterm=NONE	gui=NONE
hi StorageClass	ctermfg=113	guifg=#87d75f	gui=NONE
hi String	ctermfg=229	guifg=#ffffaf
hi Structure	ctermfg=79	guifg=#5fd7af	gui=NONE
hi Title	cterm=bold	ctermfg=45	gui=bold	guifg=#00d7ff
hi Title2	ctermfg=45	guifg=#00d7ff
hi Title3	ctermfg=45	guifg=#00b7df
hi Title4	ctermfg=45	guifg=#0097bf
hi Type		ctermfg=77	guifg=#5fd75f	gui=NONE
" hi Typedef	ctermfg=80	guifg=#5fd7d7	gui=NONE
hi Typedef	ctermfg=115	guifg=#87d7af	gui=NONE
hi Underlined	ctermfg=111	guifg=#87afff	cterm=underline	gui=underline
hi Visual	ctermfg=248	guifg=#a8a8a8	ctermbg=237 	guibg=#3a3a3a
hi VisualNOS	term=bold,underline		cterm=bold,underline		gui=bold,underline
hi WarningMsg	ctermfg=196	cterm=NONE	gui=NONE	guifg=#ff0000
hi WildMenu	ctermfg=16	ctermbg=226	guifg=#000000	guibg=#ffff00
hi ErrorMsg	ctermfg=231	ctermbg=196	guifg=#ffffff	guibg=#ff0000

" html
hi htmlLink			cterm=underline	ctermfg=105	gui=NONE	guifg=#97b7ff
hi htmlBold			cterm=bold			gui=bold
hi htmlBoldItalic		cterm=bold,italic		gui=bold,italic
hi htmlBoldUnderline		cterm=bold,underline		gui=bold,underline
hi htmlBoldUnderlineItalic	cterm=bold,underline,italic	gui=bold,underline,italic
hi htmlItalic			cterm=italic			gui=italic
hi htmlUnderline		cterm=underline			gui=underline
hi htmlUnderlineItalic		cterm=underline,italic		gui=underline,italic

" mail
hi mailHeader	ctermfg=229	guifg=#ffffaf
hi mailSubject	ctermfg=226	guifg=#ffff00
hi mailQuoted1	ctermfg=48	guifg=#00ff87
hi mailQuoted2	ctermfg=51	guifg=#00ffff
hi mailQuoted3	ctermfg=39	guifg=#00afff
hi mailQuoted4	ctermfg=33	guifg=#0087ff
hi mailQuoted5	ctermfg=27	guifg=#005fff
hi mailQuoted6	ctermfg=21	guifg=#0000ff
hi mailSignature ctermfg=209	guifg=#ff875f

" diff
hi diffAdded	ctermfg=40	guifg=#00d700
hi diffRemoved	ctermfg=210	guifg=#ff8787
hi diffFile	ctermfg=117	guifg=#87d7ff
hi diffOldFile	ctermfg=117	guifg=#87d7ff
hi diffNewFile	ctermfg=117	guifg=#87d7ff
hi diffLine	ctermfg=226	guifg=#ffff00

" wdiff
hi link	wdiffOld	diffRemoved
hi link	wdiffNew	diffAdded

" Vim help
hi helpHyperTextEntry	ctermfg=39	guifg=#00afff

" Vimscript
hi vimCommentTitle	ctermfg=135	guifg=#af5fff	gui=italic
hi vimCommentString	ctermfg=109	guifg=#87afaf	gui=italic

" R
hi rOKeyword	ctermfg=135	guifg=#af5fff	gui=italic

" ShowMarks plugin
hi ShowMarksHLl		ctermfg=227	ctermbg=28	guifg=#ffff5f	guibg=#008700
hi ShowMarksHLu		ctermfg=227	ctermbg=28	guifg=#ffff5f	guibg=#008700
hi ShowMarksHLo		ctermfg=227	ctermbg=28	guifg=#ffff5f	guibg=#008700
hi ShowMarksHLm		ctermfg=227	ctermbg=196	guifg=#ffff5f	guibg=#ff005f

" csv.vim plugin
hi CSVColumnHeaderOdd	ctermfg=46	ctermbg=236	guifg=#00ff00	guibg=#303030
hi CSVColumnHeaderEven	ctermfg=45	ctermbg=236	guifg=#00d7ff	guibg=#303030
hi CSVColumnOdd		ctermfg=40	guifg=#00d700
hi CSVColumnEven	ctermfg=39	guifg=#00afff

