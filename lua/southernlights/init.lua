local c = {
    float_bg = vim.o.winborder == "none" and "#3a3a3a" or "#000000",
    windiv_bg = "#585858",
    function_fg = "#87d7ff",
    title_fg = "#00d7ff",
    normal_fg = "#dadada",
    error_bg = "#ff0000",
    warn_fg = "#ff8000",
    info_fg = "#eeee00",
    hint_fg = "#00ffff",
}

local basic_tbl = {
    Boolean = { fg = "#ff875f" },
    Comment = { fg = "#afafff" },
    Conditional = { fg = "#ffff87" },
    Constant = { fg = "#d7ffd7" },
    Cursor = { fg = "#000000", bg = "#00ff00", bold = true },
    CursorColumn = { bg = "#262626" },
    DiffAdd = { fg = "#ffff5f", bg = "#005f00" },
    DiffChange = { fg = "#ffff5f", bg = "#5f5f00" },
    DiffDelete = { fg = "#ffff5f", bg = "#870000" },
    DiffText = { fg = "#ffff00", bg = "#870000" },
    Directory = { fg = "#00afff" },
    Emphasis = { italic = true },
    EndOfBuffer = { fg = "#0000af" },
    Error = { fg = "#ffffff", bg = "#ff0000" },
    Exception = { fg = "#eecc00" },
    Folded = { fg = "#00ffff", bg = c.windiv_bg },
    Function = { fg = c.function_fg },
    Identifier = { fg = "#5fffd7" },
    Ignore = { fg = "#6c6c6c" },
    Include = { fg = "#ffafff" },
    Keyword = { fg = "#d7ffaf" },
    Label = { fg = "#56e8c3" },
    Method = { fg = c.function_fg, italic = true },
    MoreMsg = { fg = "#00af87" },
    NonText = { fg = "#0000ff" },
    Normal = { fg = c.normal_fg, bg = "#000000" },
    NormalFloat = { fg = c.normal_fg, bg = c.float_bg },
    Number = { fg = "#ffd7af" },
    Operator = { fg = "#ff8700" },
    Pmenu = { fg = "#b2b2b2", bg = c.float_bg },
    PmenuSbar = { bg = c.windiv_bg },
    PmenuSel = { fg = "#eeeeee", bg = c.float_bg },
    PmenuThumb = { bg = "#767676" },
    PreProc = { fg = "#ff5fff" },
    QuickFixLine = { fg = "#ffffff", bg = "#005f5f" },
    Quote = { fg = "#ffffc0" },
    Repeat = { fg = "#d7ff87" },
    Search = { fg = "#ffffff", bg = "#5f5f00" },
    SignColumn = { fg = "#ffff5f", bg = c.windiv_bg },
    Special = { fg = "#ffd75f" },
    SpecialKey = { fg = "#00ffff" },
    SpellBad = { sp = "#ff0000", undercurl = true },
    SpellCap = { sp = "#00ffff", undercurl = true },
    SpellLocal = { sp = "#00ff00", undercurl = true },
    SpellRare = { sp = "#ff00ff", undercurl = true },
    Statement = { fg = "#ffff00" },
    StatusLine = { fg = "#000000", bg = "#4e4e4e" },
    StatusLineNC = { fg = "#000000", bg = c.windiv_bg },
    StorageClass = { fg = "#87d75f" },
    String = { fg = "#ffffaf" },
    Strong = { bold = true },
    Structure = { fg = "#5fd7af" },
    TabLineFill = { fg = "#000000", bg = "#262626" },
    TabLineSel = { fg = "#000000", bg = "#808080" },
    Title = { bold = true, fg = c.title_fg },
    Title2 = { fg = c.title_fg },
    Title3 = { fg = "#00b7df" },
    Title4 = { fg = "#0097bf" },
    Todo = { fg = "#000000", bg = "#ffff00" },
    Type = { fg = "#5fd75f" },
    Typedef = { fg = "#87d7af" },
    Underlined = { underline = true },
    Variable = { fg = "#bffce8" },
    Visual = { fg = "#a8a8a8", bg = "#3a3a3a" },
    VisualNOS = { bold = true, underline = true },
    WarningMsg = { fg = c.warn_fg },
    WinSeparator = { fg = c.windiv_bg, bg = "#000000" },

    -- html
    htmlLink = { underline = true, fg = "#97b7ff" },
    htmlBold = { bold = true },
    htmlBoldItalic = { bold = true, italic = true },
    htmlBoldUnderline = { bold = true, underline = true },
    htmlBoldUnderlineItalic = { bold = true, underline = true, italic = true },
    htmlItalic = { italic = true },
    htmlUnderlineItalic = { underline = true, italic = true },

    -- mail
    mailQuoted1 = { fg = "#00ff87" },
    mailQuoted2 = { fg = "#00ffff" },
    mailQuoted3 = { fg = "#00afff" },
    mailQuoted4 = { fg = "#0087ff" },
    mailQuoted5 = { fg = "#005fff" },
    mailQuoted6 = { fg = "#0000ff" },

    -- diff
    diffAdded = { fg = "#00d700" },
    diffRemoved = { fg = "#ff8787" },
    diffFile = { fg = "#87d7ff" },
    diffOldFile = { fg = "#87d7ff" },
    diffNewFile = { fg = "#87d7ff" },
    diffLine = { fg = "#ffff00" },

    -- Vim help
    helpHyperTextEntry = { fg = "#00afff" },

    -- LSP
    LspReferenceText = { bg = "#446600" },
    LspReferenceRead = { bg = "#004444" },
    LspReferenceWrite = { bg = "#440000" },
    LspReferenceTarget = { bg = "#443300" },
    LspSignatureActiveParameter = { bg = "#007700", bold = true },
    LspInlayHint = { bg = "#3a3a3a", fg = c.hint_fg },
    LspInfoBorder = { fg = "#00ff00", bg = "#ff0000" },
    ComplHint = { fg = c.hint_fg },

    -- diagnostics
    DiagnosticError = { fg = c.error_bg, bg = c.float_bg },
    DiagnosticWarn = { fg = c.warn_fg, bg = c.float_bg },
    DiagnosticInfo = { fg = c.info_fg, bg = c.float_bg },
    DiagnosticHint = { fg = c.hint_fg, bg = c.float_bg },
    DiagnosticVirtualTextInfo = { fg = c.info_fg },
    DiagnosticVirtualTextHint = { fg = c.hint_fg },
    DiagnosticUnderlineError = { undercurl = true, sp = c.error_bg },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.warn_fg },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.info_fg },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.hint_fg },

    -- Health
    healthError = { fg = "#ff0000" },
    healthSuccess = { fg = "#73daca" },
    healthWarning = { fg = "#d08000" },
}

local link_tbl = {
    -- Basic highlight groups
    StatusLineTermNC = basic_tbl.StatusLineNC,
    VertSplit = basic_tbl.StatusLineNC,
    LineNr = basic_tbl.StatusLineNC,
    CursorLineNr = basic_tbl.StatusLineNC,
    TabLine = basic_tbl.StatusLineNC,
    StatusLineTerm = basic_tbl.StatusLine,
    Float = basic_tbl.Number,
    Character = basic_tbl.Number,
    ModeMsg = basic_tbl.Normal,
    WildMenu = basic_tbl.Todo,
    CursorLine = basic_tbl.CursorColumn,
    ColorColumn = basic_tbl.CursorColumn,
    Delimiter = basic_tbl.Special,
    Conceal = basic_tbl.Special,
    IncSearch = basic_tbl.Search,
    MatchParen = basic_tbl.Search,
    ErrorMsg = basic_tbl.Error,
    FoldColumn = basic_tbl.Folded,
    Question = basic_tbl.Typedef,
    htmlUnderline = basic_tbl.Underlined,

    -- More diagnostic groups
    LspCodeLens = basic_tbl.Comment,
    DiagnosticUnnecessary = basic_tbl.Ignore,
    DiagnosticVirtualTextError = basic_tbl.Error,
    DiagnosticVirtualTextWarn = basic_tbl.WarningMsg,

    -- Treesitter

    -- From https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
    -- Identifiers
    ["@variable"] = basic_tbl.Normal, -- various variable names
    ["@variable.builtin"] = basic_tbl.Special, -- built-in variable names (e.g. `this`)
    ["@variable.parameter"] = basic_tbl.Variable, -- parameters of a function
    ["@variable.parameter.builtin"] = basic_tbl.Comment, -- special parameters (e.g. `_`, `it`)
    ["@variable.member"] = basic_tbl.Variable, -- object and struct fields
    ["@constant"] = basic_tbl.Constant, -- constant identifiers
    ["@constant.builtin"] = basic_tbl.Constant, -- built-in constant values
    ["@constant.macro"] = basic_tbl.PreProc, -- constants defined by the preprocessor
    ["@module"] = basic_tbl.StorageClass, -- modules or namespaces
    ["@module.builtin"] = basic_tbl.Include, -- built-in modules or namespaces
    ["@label"] = basic_tbl.Label, -- GOTO and other labels (e.g. `label:` in C), including heredoc labels

    -- Literals
    ["@string"] = basic_tbl.String, -- string literals
    ["@string.documentation"] = basic_tbl.String, -- string documenting code (e.g. Python docstrings)
    ["@string.regexp"] = basic_tbl.Special, -- regular expressions
    ["@string.escape"] = basic_tbl.Special, -- escape sequences
    ["@string.special"] = basic_tbl.Special, -- other special strings (e.g. dates)
    ["@string.special.symbol"] = basic_tbl.Special, -- symbols or atoms
    ["@string.special.url"] = basic_tbl.htmlLink, -- URIs (e.g. hyperlinks)
    ["@string.special.path"] = basic_tbl.Special, -- filenames
    ["@character"] = basic_tbl.Number, -- character literals
    ["@character.special"] = basic_tbl.Special, -- special characters (e.g. wildcards)
    ["@boolean"] = basic_tbl.Boolean, -- boolean literals
    ["@number"] = basic_tbl.Number, -- numeric literals
    ["@number.float"] = basic_tbl.Number, -- floating-point number literals

    -- Types
    ["@type"] = basic_tbl.Type, -- type or class definitions and annotations
    ["@type.builtin"] = basic_tbl.Type, -- built-in types
    ["@type.definition"] = basic_tbl.Type, -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
    ["@attribute"] = basic_tbl.Label, -- attribute annotations (e.g. Python decorators, Rust lifetimes)
    ["@attribute.builtin"] = basic_tbl.Label, -- builtin annotations (e.g. `@property` in Python)
    ["@property"] = basic_tbl.Label, -- the key in key/value pairs

    -- Functions

    ["@function"] = basic_tbl.Function, -- function definitions
    ["@function.builtin"] = basic_tbl.Function, -- built-in functions
    ["@function.call"] = basic_tbl.Function, -- function calls
    ["@function.macro"] = basic_tbl.PreProc, -- preprocessor macros
    ["@function.method"] = basic_tbl.Method, -- method definitions
    ["@function.method.call"] = basic_tbl.Method, -- method calls
    ["@constructor"] = basic_tbl.Structure, -- constructor calls and definitions
    ["@operator"] = basic_tbl.Operator, -- symbolic operators (e.g. `+` / `*`)

    -- Keywords
    ["@keyword"] = basic_tbl.Keyword, -- keywords not fitting into specific categories
    ["@keyword.coroutine"] = basic_tbl.Repeat, -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    ["@keyword.function"] = basic_tbl.Function, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    ["@keyword.operator"] = basic_tbl.Operator, -- operators that are English words (e.g. `and` / `or`)
    ["@keyword.import"] = basic_tbl.Include, -- keywords for including or exporting modules (e.g. `import` / `from` in Python)
    ["@keyword.type"] = basic_tbl.Type, -- keywords describing namespaces and composite types (e.g. `struct`, `enum`)
    ["@keyword.modifier"] = basic_tbl.Label, -- keywords modifying other constructs (e.g. `const`, `static`, `public`)
    ["@keyword.repeat"] = basic_tbl.Repeat, -- keywords related to loops (e.g. `for` / `while`)
    ["@keyword.return"] = basic_tbl.Keyword, -- keywords like `return` and `yield`
    ["@keyword.debug"] = basic_tbl.Exception, -- keywords related to debugging
    ["@keyword.exception"] = basic_tbl.Exception, -- keywords related to exceptions (e.g. `throw` / `catch`)
    ["@keyword.conditional"] = basic_tbl.Conditional, -- keywords related to conditionals (e.g. `if` / `else`)
    ["@keyword.conditional.ternary"] = basic_tbl.Operator, -- ternary operator (e.g. `?` / `:`)
    ["@keyword.directive"] = basic_tbl.Statement, -- various preprocessor directives & shebangs
    ["@keyword.directive.define"] = basic_tbl.Statement, -- preprocessor definition directives

    -- Punctuation
    ["@punctuation.delimiter"] = basic_tbl.Special, -- delimiters (e.g. `;` / `.` / `,`)
    ["@punctuation.bracket"] = basic_tbl.Special, -- brackets (e.g. `()` / `{}` / `[]`)
    ["@punctuation.special"] = basic_tbl.Special, -- special symbols (e.g. `{}` in string interpolation)

    -- Comments
    ["@comment"] = basic_tbl.Comment, -- line and block comments
    ["@comment.documentation"] = { fg = "#dac0df" }, -- comments documenting code
    ["@comment.error"] = basic_tbl.Error, -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
    ["@comment.warning"] = basic_tbl.WarningMsg, -- warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
    ["@comment.todo"] = basic_tbl.Todo, -- todo-type comments (e.g. `TODO`, `WIP`)
    ["@comment.note"] = basic_tbl.MoreMsg, -- note-type comments (e.g. `NOTE`, `INFO`, `XXX`)

    -- Markup - Mainly for markup languages.
    ["@markup.strong"] = basic_tbl.Strong, -- bold text
    ["@markup.italic"] = basic_tbl.Emphasis, -- italic text
    ["@markup.strikethrough"] = { strikethrough = true }, -- struck-through text
    ["@markup.underline"] = basic_tbl.Underlined, -- underlined text (only for literal underline markup!)
    ["@markup.heading"] = basic_tbl.Title, -- headings, titles (including markers)
    ["@markup.heading.1"] = basic_tbl.Title, -- top-level heading
    ["@markup.heading.2"] = basic_tbl.Title2, -- section heading
    ["@markup.heading.3"] = basic_tbl.Title3, -- subsection heading
    ["@markup.heading.4"] = basic_tbl.Title4, -- and so on
    ["@markup.heading.5"] = basic_tbl.Title4, -- and so forth
    ["@markup.heading.6"] = basic_tbl.Title4, -- six levels ought to be enough for anybody
    ["@markup.quote"] = basic_tbl.Quote, -- block quotes
    ["@markup.math"] = basic_tbl.Special, -- math environments (e.g. `$ ... $` in LaTeX)
    ["@markup.link"] = basic_tbl.htmlLink, -- text references, footnotes, citations, etc.
    ["@markup.link.label"] = basic_tbl.Label, -- link, reference descriptions
    ["@markup.link.url"] = basic_tbl.htmlLink, -- URL-style links
    ["@markup.raw"] = basic_tbl.String, -- literal or verbatim text (e.g. inline code)
    ["@markup.raw.block"] = basic_tbl.String, -- literal or verbatim text as a stand-alone block
    ["@markup.list"] = basic_tbl.StorageClass, -- list markers
    ["@markup.list.checked"] = basic_tbl.MoreMsg, -- checked todo-style list markers
    ["@markup.list.unchecked"] = basic_tbl.WarningMsg, -- unchecked todo-style list markers
    ["@diff.plus"] = basic_tbl.diffAdded, -- added text (for diff files)
    ["@diff.minus"] = basic_tbl.diffRemoved, -- deleted text (for diff files)
    ["@diff.delta"] = basic_tbl.diffLine, -- changed text (for diff files)
    ["@tag"] = basic_tbl.Label, -- XML-style tag names (and similar)
    ["@tag.builtin"] = basic_tbl.Label, -- builtin tag names (e.g. HTML5 tags)
    ["@tag.attribute"] = basic_tbl.Label, -- XML-style tag attributes
    ["@tag.delimiter"] = basic_tbl.Special, -- XML-style tag delimiters

    wdiffOld = basic_tbl.diffRemoved,
    wdiffNew = basic_tbl.diffAdded,

    mailURL = basic_tbl.htmlLink,

    -- nvim-cmp
    -- CmpItemAbbr guibg=NONE
    CmpItemAbbrDeprecated = { strikethrough = true },
    CmpItemAbbrMatch = { fg = "#569CD6" },
    CmpItemAbbrMatchFuzzy = { fg = "#569CD6" },
    CmpItemKindKeyword = basic_tbl.Keyword,
    CmpItemKindProperty = basic_tbl.Constant,
    CmpItemKindUnit = basic_tbl.Include,
    CmpItemKindFunction = basic_tbl.Function,
    CmpItemKindStruct = basic_tbl.Type,
    CmpItemKindMethod = basic_tbl.Method,
    CmpItemKindText = basic_tbl.String,
    CmpItemKindValue = basic_tbl.Numeric,
    CmpItemKindField = basic_tbl.Special,
    CmpItemKindConstructor = basic_tbl.Statement,
    CmpItemKindClass = basic_tbl.Type,
    CmpItemKindInterface = basic_tbl.Include,
    CmpItemKindModule = basic_tbl.PreProc,
    CmpItemKindVariable = basic_tbl.Variable,
}

local M = {}

M.load = function()
    -- only needed to clear when not the default colorscheme
    if vim.g.colors_name then vim.cmd("hi clear") end
    vim.o.termguicolors = true
    vim.g.colors_name = "southernlights"

    -- -- Debug:
    -- for k1, v1 in pairs(basic_tbl) do
    --     for k2, v2 in pairs(basic_tbl) do
    --         if
    --             k1 ~= k2
    --             and v1.fg == v2.fg
    --             and v1.bg == v2.bg
    --             and v1.italic == v2.italic
    --             and v1.bold == v2.bold
    --             and v1.underline == v2.underline
    --         then
    --             print("Same: " .. k1 .. " and " .. k2)
    --         end
    --     end
    -- end

    for k, v in pairs(basic_tbl) do
        vim.api.nvim_set_hl(0, k, v)
    end
    for k, v in pairs(link_tbl) do
        vim.api.nvim_set_hl(0, k, v)
    end
end

return M
