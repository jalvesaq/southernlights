" Vim color scheme
"
" Name:        southernlights256.vim
" Maintainer:  Jakson Aquino
" Last Change: Fri May 07, 2021  10:46AM
" License:     GNU/GPL
"
" Based on other color schemes. The starting point was 'torte'


set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "southernlights"

if $TERM == "linux"
    let g:southernlights_16 = get(g:, "southernlights_16", 1)
endif

if exists('g:southernlights_16') && g:southernlights_16 == 1
    hi String		cterm=none	ctermfg=white
    hi Boolean		cterm=none	ctermfg=red
    hi Special		cterm=none	ctermfg=darkyellow
    hi Number		cterm=none	ctermfg=magenta
    hi Comment		cterm=none	ctermfg=darkcyan
    hi Function		cterm=none	ctermfg=cyan
    hi PreProc		cterm=none	ctermfg=lightblue
    hi Type		cterm=none	ctermfg=lightgreen
    hi Pmenu		ctermfg=black	ctermbg=darkblue
    hi PmenuSel		ctermfg=gray	ctermbg=darkblue
    hi Character	cterm=none
    hi SpellLocal	ctermfg=black	ctermbg=green
    hi StatusLine	cterm=none	ctermfg=gray	ctermbg=darkblue
    hi StatusLineNC	cterm=none	ctermfg=black	ctermbg=darkblue
    hi VertSplit	cterm=none	ctermfg=darkblue	ctermbg=darkblue
    hi TabLineSel	cterm=none	ctermfg=cyan	ctermbg=blue
    hi TabLine		cterm=none	ctermfg=gray	ctermbg=blue
    hi TabLineFill	cterm=none	ctermfg=blue	ctermbg=blue
    hi diffFile		ctermfg=cyan
    hi diffAdded	ctermfg=green
    hi diffRemoved	ctermfg=darkyellow
    hi link wdiffOld	diffRemoved
    hi link wdiffNew	diffAdded
    hi mailQuoted1	ctermfg=green
    hi mailQuoted2	ctermfg=cyan
    hi mailQuoted3	ctermfg=darkcyan
    hi mailQuoted4	ctermfg=blue
    hi mailQuoted5	ctermfg=blue
    hi mailQuoted6	ctermfg=blue
    hi mailSignature	ctermfg=darkcyan
    hi SignColumn	ctermfg=yellow	ctermbg=green
    finish
endif

hi Boolean	ctermfg=209	guifg=#ff875f
hi Character	ctermfg=223	guifg=#ffd7af
hi Comment	ctermfg=147	guifg=#afafff
hi Constant	ctermfg=194	guifg=#d7ffd7
hi Conceal	ctermfg=221	ctermbg=16	guifg=#ffd75f	guibg=black
hi Cursor	ctermfg=16	ctermbg=28	cterm=bold	guifg=Black	guibg=Green	gui=bold
hi CursorLine	ctermbg=235	cterm=none	guibg=#262626	gui=none
hi CursorColumn	ctermbg=235	cterm=none	guibg=#262626	gui=none
hi ColorColumn	ctermbg=235	cterm=none	guibg=#262626	gui=none
hi DiffAdd	ctermfg=227	ctermbg=22	guifg=#ffff5f	guibg=#005f00
hi DiffDelete	ctermfg=227	ctermbg=88	guifg=#ffff5f	guibg=#870000
hi DiffChange	ctermfg=227	ctermbg=58	guifg=#ffff5f	guibg=#5f5f00
hi DiffText	ctermfg=227	ctermbg=88	guifg=#ffff5f	guibg=#870000	cterm=none	gui=none
hi Error	ctermfg=231	cterm=none	ctermbg=196	gui=none	guifg=White	guibg=Red
hi Directory	ctermfg=33	guifg=#0087ff
hi Folded	ctermfg=86	ctermbg=240	guifg=#00ffff	guibg=#585858
hi FoldColumn	ctermfg=86	ctermbg=240	guifg=#00ffff	guibg=#585858
hi Function	ctermfg=117	guifg=#87d7ff
hi Identifier	ctermfg=86	cterm=none	guifg=#5fffd7	gui=none
hi Include	ctermfg=219	cterm=none	guifg=#ffafff	gui=none
hi LineNr	ctermfg=16	ctermbg=240	guifg=Black	guibg=#585858
hi CursorLineNr	ctermfg=16	ctermbg=243	guifg=Black	guibg=#585858
hi MatchParen	ctermfg=231	ctermbg=58	guifg=white	guibg=#5f5f00
hi NonText	ctermfg=21	guifg=#0000ff	term=none	gui=none
hi Number	ctermfg=223	guifg=#ffd7af
hi Normal	ctermfg=253	ctermbg=16	guifg=#dadada	guibg=Black
hi NormalFloat	ctermfg=253	ctermbg=237	guifg=#dadada	guibg=#3a3a3a
hi MoreMsg	ctermfg=36	guifg=#00af87
hi ModeMsg	ctermfg=253	guifg=#dadada
hi Operator	ctermfg=204	guifg=#ff5f87
hi Pmenu	ctermfg=249	ctermbg=235	guifg=#b2b2b2	guibg=#262626
hi PmenuSel	ctermfg=255	ctermbg=237	guifg=#eeeeee	guibg=#3a3a3a
hi PmenuSbar	ctermbg=240	guibg=#585858
hi PmenuThumb	ctermbg=243	guibg=#767676
hi PreProc	ctermfg=207	ctermbg=none	guifg=#ff5fff
hi Question	ctermfg=115	guifg=#87d7af
hi QuickFixLine	ctermfg=231	ctermbg=23	guifg=white	guibg=#005f5f
hi Search	ctermfg=231	ctermbg=58	guifg=white	guibg=#5f5f00
hi IncSearch	ctermfg=231	ctermbg=58	guifg=white	guibg=#5f5f00
hi SignColumn	ctermfg=227	ctermbg=240	guifg=#ffff5f	guibg=#585858
hi Special	ctermfg=221	guifg=#ffd75f
hi SpecialKey	ctermfg=86	guifg=#00ffff
if has("gui_running")
    hi SpellBad		ctermfg=196	ctermbg=none	cterm=underline	guisp=#ff0000	gui=undercurl
    hi SpellLocal	ctermfg=28	ctermbg=none	cterm=underline	guisp=#00AA00	gui=undercurl
    hi SpellRare	ctermfg=201	ctermbg=none	cterm=underline	guisp=#ff00ff	gui=undercurl
    hi SpellCap		ctermfg=33	ctermbg=none	cterm=underline	guisp=#0087ff	gui=undercurl
else
    hi SpellBad		ctermfg=196	ctermbg=none	cterm=underline	guifg=#ff0000	gui=underline
    hi SpellLocal	ctermfg=28	ctermbg=none	cterm=underline	guifg=#00AA00	gui=underline
    hi SpellRare	ctermfg=201	ctermbg=none	cterm=underline	guifg=#ff00ff	gui=underline
    hi SpellCap		ctermfg=33	ctermbg=none	cterm=underline	guifg=#0087ff	gui=underline
endif
hi Statement	ctermfg=226	guifg=yellow	cterm=none	gui=none
hi StatusLine	ctermfg=16	ctermbg=244	guifg=black	guibg=#808080	cterm=none	gui=none
hi StatusLineNC	ctermfg=16	ctermbg=240	guifg=black	guibg=#585858	cterm=none	gui=none
hi VertSplit	ctermfg=240	ctermbg=240	guifg=#585858	guibg=#585858	cterm=none	gui=none
hi TabLineSel	ctermfg=16	ctermbg=244	guifg=black	guibg=#808080	cterm=none	gui=none
hi TabLine	ctermfg=16	ctermbg=240	guifg=black	guibg=#585858	cterm=none	gui=none
hi TabLineFill	ctermfg=16	ctermbg=235	guifg=black	guibg=#262626	cterm=none	gui=none
hi Todo		ctermfg=16	ctermbg=226	guifg=black	guibg=#ffff00	cterm=none	gui=none
hi StorageClass	ctermfg=113	guifg=#87d75f	gui=none
hi String	ctermfg=229	guifg=#ffffaf
hi Structure	ctermfg=79	guifg=#5fd7af	gui=none
hi Title	cterm=bold	ctermfg=45	gui=bold	guifg=#00d7ff
hi Type		ctermfg=77	guifg=#5fd75f	gui=none
hi Underlined	ctermfg=105	guifg=#8787ff	cterm=underline	gui=underline
hi Visual	ctermfg=248	guifg=#a8a8a8	ctermbg=237 	guibg=#3a3a3a
hi VisualNOS	term=bold,underline		cterm=bold,underline		gui=bold,underline
hi WarningMsg	ctermfg=196
hi WildMenu	ctermfg=16	ctermbg=226	guifg=#000000	guibg=#ffff00
hi ErrorMsg	ctermfg=231	ctermbg=196	guifg=#ffffff	guibg=#ff0000

" Nvim lsp
hi LspDiagnosticsDefaultHint		ctermfg=blue   guifg=#15aacc guibg=#333333
hi LspDiagnosticsDefaultError		ctermfg=red    guifg=#ff0000 guibg=#333333
hi LspDiagnosticsDefaultWarning		ctermfg=brown  guifg=#ff922b guibg=#333333
hi LspDiagnosticsDefaultInformation	ctermfg=yellow guifg=#fab005 guibg=#333333

hi default link LspDiagnosticsFloatingHint         LspDiagnosticsDefaultHint
hi default link LspDiagnosticsFloatingError        LspDiagnosticsDefaultError
hi default link LspDiagnosticsFloatingWarning      LspDiagnosticsDefaultWarning
hi default link LspDiagnosticsFloatingInformation  LspDiagnosticsDefaultInformation

hi default link LspDiagnosticsSignHint         LspDiagnosticsDefaultHint
hi default link LspDiagnosticsSignError        LspDiagnosticsDefaultError
hi default link LspDiagnosticsSignWarning      LspDiagnosticsDefaultWarning
hi default link LspDiagnosticsSignInformation  LspDiagnosticsDefaultInformation

hi LspDiagnosticsUnderlineError guifg=NONE ctermfg=NONE cterm=underline gui=underline
hi LspDiagnosticsUnderlineWarning guifg=NONE ctermfg=NONE cterm=underline gui=underline
hi LspDiagnosticsUnderlineInformation guifg=NONE ctermfg=NONE cterm=underline gui=underline
hi LspDiagnosticsUnderlineHint guifg=NONE ctermfg=NONE cterm=underline gui=underline

hi LspReferenceRead gui=bold ctermbg=237 guibg=#004444
hi LspReferenceText gui=bold ctermbg=237 guibg=#444400
hi LspReferenceWrite gui=bold ctermbg=237 guibg=#440000

" html
hi htmlLink			cterm=underline	ctermfg=105	gui=underline	guifg=#8787ff
hi htmlBold			cterm=bold			gui=bold
hi htmlBoldItalic		cterm=bold,italic		gui=bold,italic
hi htmlBoldUnderline		cterm=bold,underline		gui=bold,underline
hi htmlBoldUnderlineItalic	cterm=bold,underline,italic	gui=bold,underline,italic
hi htmlItalic			cterm=italic			gui=italic
hi htmlUnderline		cterm=underline			gui=underline
hi htmlUnderlineItalic		cterm=underline,italic		gui=underline,italic

" mail
hi mailHeader	ctermfg=229	guifg=#ffffaf
hi mailSubject	ctermfg=226	guifg=yellow
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
hi diffLine	ctermfg=226	guifg=yellow

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
