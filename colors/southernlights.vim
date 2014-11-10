" Vim color scheme
"
" Name:        southernlights256.vim
" Maintainer:  Jakson Aquino
" Last Change: Mon Oct 27, 2014  01:14PM
" License:     GNU/GPL
"
" Based on other color schemes. The starting point was 'torte'


hi clear

set background=dark

if exists("syntax_on")
  syntax reset
endif

let colors_name = "southernlights"

if &term =~ "xterm" || &term =~ "256" || $DISPLAY != ""
    set t_Co=256
endif

if &t_Co < 256 && !has("gui_running")
    hi String cterm=none ctermfg=white
    hi Boolean cterm=none ctermfg=red
    hi Special cterm=none ctermfg=darkyellow
    hi Number cterm=none ctermfg=magenta
    hi Comment cterm=none ctermfg=darkcyan
    hi Function cterm=none ctermfg=cyan
    hi PreProc cterm=none ctermfg=lightblue
    hi Type cterm=none ctermfg=lightgreen
    hi Pmenu	ctermfg=cyan	ctermbg=magenta
    hi PmenuSel	ctermfg=white	ctermbg=magenta
    hi Character cterm=none
    hi SpellLocal ctermfg=black ctermbg=green
    hi StatusLine	cterm=NONE ctermfg=white	ctermbg=gray
    hi StatusLineNC	cterm=NONE ctermfg=black	ctermbg=gray
    hi TabLineSel	cterm=NONE	ctermfg=white	ctermbg=gray
    hi TabLine     	cterm=NONE	ctermfg=black	ctermbg=gray
    hi TabLineFill      cterm=NONE	ctermfg=gray	ctermbg=black
    hi diffFile ctermfg=cyan
    hi diffAdded	ctermfg=green
    hi diffRemoved	ctermfg=darkyellow
    hi link wdiffOld diffRemoved
    hi link wdiffNew diffAdded
    hi mailQuoted1 ctermfg=green
    hi mailQuoted2 ctermfg=cyan
    hi mailQuoted3 ctermfg=darkcyan
    hi mailQuoted4 ctermfg=blue
    hi mailQuoted5 ctermfg=blue
    hi mailQuoted6 ctermfg=blue
    hi mailSignature ctermfg=darkcyan
    hi SignColumn ctermfg=45 ctermbg=239 guifg=#00d7ff guibg=#4e4e4e
    hi ShowMarksHLl ctermfg=yellow ctermbg=green
    hi ShowMarksHLu ctermfg=yellow ctermbg=green
    hi ShowMarksHLo ctermfg=yellow ctermbg=green
    hi ShowMarksHLm ctermfg=yellow ctermbg=green
    finish
endif

hi Boolean	ctermfg=209	guifg=#ff875f
hi Character	ctermfg=223	guifg=#ffd7af
hi Comment      ctermfg=147	guifg=#afafff
hi Constant	ctermfg=219	guifg=#ffafff
hi Conceal	ctermfg=221	ctermbg=16 guifg=#ffd75f guibg=black
hi Cursor	ctermfg=16	ctermbg=28	cterm=bold	guifg=Black	guibg=Green	gui=bold
hi CursorLine	ctermbg=234	cterm=NONE	guibg=#1c1c1c gui=none
hi CursorColumn	ctermbg=234	cterm=NONE	guibg=#1c1c1c gui=none
hi ColorColumn	ctermbg=234	cterm=NONE	guibg=#1c1c1c gui=none
hi Error	ctermfg=231	cterm=NONE	ctermbg=196   gui=NONE guifg=White guibg=Red
hi Directory	ctermfg=33	guifg=#0087ff
hi Folded	ctermfg=86	ctermbg=240	guifg=#00ffff	guibg=#585858
hi Function	ctermfg=117	guifg=#87d7ff
hi Identifier	ctermfg=86	cterm=none      guifg=cyan      gui=none
hi LineNr	ctermfg=16	ctermbg=240	guifg=Black	guibg=#585858
hi CursorLineNr	ctermfg=16	ctermbg=243	guifg=Black	guibg=#585858
hi MatchParen	ctermfg=231	ctermbg=58	guifg=white	guibg=#5f5f00
hi NonText	ctermfg=21	guifg=#0000ff
hi Number	ctermfg=223	guifg=#ffd7af
hi Normal	ctermfg=253	ctermbg=NONE	guifg=#dadada guibg=Black
hi Operator	ctermfg=204	guifg=#ff5f87
hi Pmenu	ctermfg=119	ctermbg=22	guifg=#87ff5f	guibg=#005f00
hi PmenuSel	ctermfg=226	ctermbg=28	guifg=Yellow	guibg=#008700
hi PmenuSbar    ctermbg=244      guibg=#808080
hi PmenuThumb   ctermbg=251      guibg=#c6c6c6
hi PreProc	ctermfg=201	ctermbg=NONE	guifg=#ff40ff
hi Search	ctermfg=231	ctermbg=58	guifg=white	guibg=#5f5f00
hi Special	ctermfg=221	guifg=#ffd75f
hi SpecialKey	ctermfg=86	guifg=#00ffff
hi SpellBad	ctermfg=196	ctermbg=NONE	cterm=UNDERLINE	guisp=red	gui=undercurl
hi SpellLocal	ctermfg=28	ctermbg=NONE	cterm=UNDERLINE	guisp=#00AA00	gui=undercurl
hi SpellRare	ctermfg=201	ctermbg=NONE	cterm=UNDERLINE	guisp=Magenta	gui=undercurl
hi Statement	ctermfg=226	guifg=yellow	cterm=NONE	gui=NONE
hi StatusLine	ctermfg=231	ctermbg=239	guifg=white	guibg=#4e4e4e gui=none cterm=bold
hi StatusLineNC	ctermfg=16	ctermbg=239	guifg=black	guibg=#4e4e4e gui=none cterm=none
hi VertSplit   	ctermfg=16	ctermbg=239	guifg=black	guibg=gray30 gui=none cterm=none
hi TabLineSel	ctermfg=16	ctermbg=244	cterm=NONE	guifg=black	guibg=#808080 gui=NONE
hi TabLine     	ctermfg=16	ctermbg=240	cterm=NONE	guifg=black	guibg=#585858 gui=NONE
hi TabLineFill  ctermfg=16	ctermbg=235	cterm=NONE	guifg=black	guibg=#262626 gui=NONE
hi String	ctermfg=229	guifg=#ffffaf 
hi Title	cterm=bold	ctermfg=201	gui=bold	guifg=Magenta
hi Type		ctermfg=77	guifg=#5fd75f	gui=NONE
hi vimCommentString ctermfg=147	guifg=#afafff	gui=italic
hi Visual	ctermfg=248	guifg=#a8a8a8	ctermbg=237 guibg=#3a3a3a
hi WarningMsg	ctermfg=196

" html
hi htmlLink			cterm=UNDERLINE	ctermfg=105	gui=UNDERLINE	guifg=#8787ff
hi htmlBold			cterm=BOLD			gui=BOLD
hi htmlBoldItalic		cterm=BOLD,ITALIC		gui=BOLD,ITALIC
hi htmlBoldUnderline		cterm=BOLD,UNDERLINE		gui=BOLD,UNDERLINE
hi htmlBoldUnderlineItalic	cterm=BOLD,UNDERLINE,ITALIC	gui=BOLD,UNDERLINE,ITALIC
hi htmlItalic			cterm=ITALIC			gui=ITALIC
hi htmlUnderline		cterm=UNDERLINE			gui=UNDERLINE
hi htmlUnderlineItalic		cterm=UNDERLINE,ITALIC		gui=UNDERLINE,ITALIC

" mail
hi mailHeader  ctermfg=229 guifg=#ffffaf
hi mailSubject ctermfg=226 guifg=yellow
hi mailQuoted1 ctermfg=48 guifg=#00ff87
hi mailQuoted2 ctermfg=51 guifg=#00ffff
hi mailQuoted3 ctermfg=39 guifg=#00afff
hi mailQuoted4 ctermfg=33 guifg=#0087ff
hi mailQuoted5 ctermfg=27 guifg=#005fff
hi mailQuoted6 ctermfg=21 guifg=#0000ff
hi mailSignature ctermfg=209 guifg=#ff875f

" diff
hi diffAdded	ctermfg=40	guifg=#00d700
hi diffRemoved	ctermfg=210	guifg=#ff8787
hi diffFile	ctermfg=117	guifg=#87d7ff
hi diffOldFile	ctermfg=117	guifg=#87d7ff
hi diffNewFile	ctermfg=117	guifg=#87d7ff
hi diffLine	ctermfg=226	guifg=yellow

" wdiff
hi link wdiffOld diffRemoved
hi link wdiffNew diffAdded

" Vim help
hi helpHyperTextEntry ctermfg=39 guifg=#00afff

" ShowMarks plugin
hi SignColumn ctermfg=45 ctermbg=239 guifg=#00d7ff guibg=#4e4e4e
hi ShowMarksHLl ctermfg=227 ctermbg=28 guifg=#ffff5f guibg=#008700
hi ShowMarksHLu ctermfg=227 ctermbg=28 guifg=#ffff5f guibg=#008700
hi ShowMarksHLo ctermfg=227 ctermbg=28 guifg=#ffff5f guibg=#008700
hi ShowMarksHLm ctermfg=227 ctermbg=196 guifg=#ffff5f guibg=#ff005f
