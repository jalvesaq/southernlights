" Vim color scheme
"
" Name:        southernlights.vim
" Maintainer:  Jakson Aquino
" Last Change: Thu Sep 11, 2025  01:41PM
" License:     GNU/GPL
"
" Based on other color schemes. The starting point was 'torte'

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

if has('nvim') || has('gui_running')
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

if has('nvim')
    " Nvim LSP
    hi LspDiagnosticsDefaultHint		ctermfg=blue   guifg=#15aacc guibg=#3a3a3a
    hi LspDiagnosticsDefaultError		ctermfg=red    guifg=#ff0000 guibg=#3a3a3a
    hi LspDiagnosticsDefaultWarning		ctermfg=brown  guifg=#ff922b guibg=#3a3a3a
    hi LspDiagnosticsDefaultInformation	ctermfg=yellow guifg=#fab005 guibg=#3a3a3a

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

    " Treesitter
    hi link TSAnnotation LspDiagnosticsDefaultHint
    hi link TSAttribute Label
    hi link TSBoolean Boolean
    hi link TSCharacter Character
    hi link TSCharacterSpecial Special
    hi link TSComment Comment
    hi link TSCommentDocumentation Special
    hi link TSConditional Conditional
    hi link TSConstBuiltin Constant
    hi link TSConstMacro PreProc
    hi link TSConstant Constant
    hi link TSConstructor StorageClass
    hi link TSDebug PreProc
    hi link TSDefine PreProc
    hi link TSEmphasis Emphasis
    hi link TSEnvironment Include
    hi link TSEnvironmentName Include
    hi link TSError Error
    hi link TSException Exception
    hi link TSField Identifier
    hi link TSFloat Float
    hi link TSFuncBuiltin Function
    hi link TSFuncMacro PreProc
    hi link TSFunction Function
    hi link TSFunctionCall Function
    hi link TSInclude Include
    hi link TSKeyword Keyword
    hi link TSKeywordFunction Function
    hi link TSKeywordOperator Operator
    hi link TSKeywordReturn Include
    hi link TSLabel Label
    hi link TSLiteral Constant
    hi link TSMath Special
    hi link TSMethod Method
    hi link TSMethodCall Method
    hi link TSNamespace Include
    hi link TSNone None
    hi link TSNumber Number
    hi link TSOperator Operator
    hi link TSParameter Identifier
    hi link TSParameterReference Identifier
    hi link TSPreProc PreProc
    hi link TSProperty Identifier
    hi link TSPunctBracket Special
    hi link TSPunctDelimiter Delimiter
    hi link TSPunctSpecial Special
    hi link TSRepeat Repeat
    hi link TSStorageClass StorageClass
    hi link TSStorageClassLifetime StorageClass
    hi link TSStrike Comment
    hi link TSString String
    hi link TSStringEscape Special
    hi link TSStringRegex Special
    hi link TSStringSpecial Special
    hi link TSStrong Strong
    hi link TSSymbol Special
    hi link TSTag Label
    hi link TSTagAttribute Label
    hi link TSTagDelimiter Delimiter
    hi link TSText Normal
    hi link TSTextReference Identifier
    hi link TSTitle Title
    hi link TSTodo Todo
    hi link TSType Type
    hi link TSTypeBuiltin Type
    hi link TSTypeDefinition Type
    hi link TSTypeQualifier Type
    hi link TSURI htmlLink
    hi link TSVariable Variable
    hi link TSVariableBuiltin Type

    " lukas-reineke/headlines.nvim
    " Background color of code blocks in Quarto documents
    hi CodeBlock guibg=#202020

    hi link @annotation TSAnnotation
    hi link @attribute TSAttribute
    hi link @boolean TSBoolean
    hi link @character TSCharacter
    hi link @character.special TSCharacterSpecial
    hi link @comment TSComment
    hi link @comment.documentation TSCommentDocumentation
    hi link @conceal Conceal
    hi link @conditional TSConditional
    hi link @constant TSConstant
    hi link @constant.builtin TSConstBuiltin
    hi link @constant.macro TSConstMacro
    hi link @constructor TSConstructor
    hi link @debug TSDebug
    hi link @define TSDefine
    hi link @delimiter Delimiter
    hi link @error TSError
    hi link @exception TSException
    hi link @field TSField
    hi link @float TSFloat
    hi link @function TSFunction
    hi link @function.builtin TSFuncBuiltin
    hi link @function.call TSFunctionCall
    hi link @function.macro TSFuncMacro
    hi link @include TSInclude
    hi link @keyword TSKeyword
    hi link @keyword.function TSKeywordFunction
    hi link @keyword.operator TSKeywordOperator
    hi link @keyword.return TSKeywordReturn
    hi link @label TSLabel
    hi link @markup.heading.1.markdown Title
    hi link @markup.heading.2.markdown Title2
    hi link @markup.heading.3.markdown Title3
    hi link @markup.heading.4.markdown Title4
    hi link @markup.heading.5.markdown Title4
    hi link @markup.heading.6.markdown Title4
    hi link @math TSMath
    hi link @method TSMethod
    hi link @method.call TSMethodCall
    hi link @namespace TSNamespace
    hi link @none TSNone
    hi link @number TSNumber
    hi link @operator TSOperator
    hi link @parameter TSParameter
    hi link @parameter.reference TSParameterReference
    hi link @preproc TSPreProc
    hi link @property TSProperty
    hi link @punctuation.bracket TSPunctBracket
    hi link @punctuation.delimiter TSPunctDelimiter
    hi link @punctuation.special TSPunctSpecial
    hi link @repeat TSRepeat
    hi link @storageclass TSStorageClass
    hi link @storageclass.lifetime TSStorageClassLifetime
    hi link @strike TSStrike
    hi link @string TSString
    hi link @string.escape TSStringEscape
    hi link @string.regex TSStringRegex
    hi link @string.special TSStringSpecial
    hi link @symbol TSSymbol
    hi link @tag TSTag
    hi link @tag.attribute TSTagAttribute
    hi link @tag.delimiter TSTagDelimiter
    hi link @text TSText
    hi link @text.danger TSDanger
    hi link @text.diff.add diffAdded
    hi link @text.diff.delete diffRemoved
    hi link @text.emphasis TSEmphasis
    hi link @text.environment TSEnvironment
    hi link @text.environment.name TSEnvironmentName
    hi link @text.literal TSLiteral
    hi link @text.math TSMath
    hi link @text.note TSNote
    hi link @text.quote Quote
    hi link @text.reference TSTextReference
    hi link @text.strike TSStrike
    hi link @text.strong TSStrong
    hi link @text.title TSTitle
    hi link @text.todo TSTodo
    hi link @text.todo.checked Green
    hi link @text.todo.unchecked Ignore
    hi link @text.underline TSUnderline
    hi link @text.uri TSURI
    hi link @text.warning TSWarning
    hi link @todo TSTodo
    hi link @type TSType
    hi link @type.builtin TSTypeBuiltin
    hi link @type.definition TSTypeDefinition
    hi link @type.qualifier TSTypeQualifier
    hi link @uri TSURI
    hi link @variable TSVariable
    hi link @variable.builtin TSVariableBuiltin
    hi link @lsp.type.class TSType
    hi link @lsp.type.comment TSComment
    hi link @lsp.type.decorator TSFunction
    hi link @lsp.type.enum TSType
    hi link @lsp.type.enumMember TSProperty
    hi link @lsp.type.events TSLabel
    hi link @lsp.type.function TSFunction
    hi link @lsp.type.interface TSType
    hi link @lsp.type.keyword TSKeyword
    hi link @lsp.type.macro TSConstMacro
    hi link @lsp.type.method TSMethod
    hi link @lsp.type.modifier TSTypeQualifier
    hi link @lsp.type.namespace TSNamespace
    hi link @lsp.type.number TSNumber
    hi link @lsp.type.operator TSOperator
    hi link @lsp.type.parameter TSParameter
    hi link @lsp.type.property TSProperty
    hi link @lsp.type.regexp TSStringRegex
    hi link @lsp.type.string TSString
    hi link @lsp.type.struct TSType
    hi link @lsp.type.type TSType
    hi link @lsp.type.typeParameter TSTypeDefinition
    hi link @lsp.type.variable TSVariable

    " clangd highlights code disabled by #ifdef/#ifndef directives
    hi link @lsp.type.comment.c Ignore

    " Avoid strong color for quotations
    hi link @markup.quote.markdown Quote

    " Avoid underline in links
    hi link @markup.link.label.markdown_inline htmlLink
endif

" nvim-cmp
highlight! CmpItemAbbr guibg=NONE
highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough
highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
highlight! link CmpItemAbbrMatchFuzzy CmpItemAbbrMatch
highlight! link CmpItemKindKeyword Keyword
highlight! link CmpItemKindProperty Constant
highlight! link CmpItemKindUnit Include
highlight! link CmpItemKindFunction Function
highlight! link CmpItemKindStruct Type
highlight! link CmpItemKindMethod Method
highlight! link CmpItemKindText String
highlight! link CmpItemKindValue Numeric
highlight! link CmpItemKindField Special
highlight! link CmpItemKindConstructor Statement
highlight! link CmpItemKindClass Type
highlight! link CmpItemKindInterface Include
highlight! link CmpItemKindModule PreProc
highlight! link CmpItemKindVariable Variable
