local c = require("sunflower.colors")

local theme = {}

theme.setHighlights = {
    -- Editor
    Normal = {fg = c.fg, bg = c.bg}, -- normal text
    NormalNC = {fg = c.fg, bg = c.bg}, -- normal text in non-current windows
    NormalFloat = {fg = c.fg, bg = c.alt_bg}, -- normal text in floating windows
    SignColumn = {fg = c.fg, bg = c.bg}, -- column where signs are displayed
    CursorLineSign = {link = 'SignColumn'}, -- column where signs are displayed
    MsgArea = {fg = c.fg, bg = c.bg}, -- area for messages and cmdline
    ModeMsg = {fg = c.fg, bg = c.alt_bg}, -- 'showmode' message (e.g., "-- INSERT --")
    MsgSeparator = {link = 'StatusLine'}, -- separator for scrolled messages, msgsep flag of 'display'
    SpellBad = {fg = "NONE", bg = "NONE", sp = c.red, undercurl = true}, -- word that is not recognized by the spellchecker. 'spell'
    SpellCap = {fg = "NONE", bg = "NONE", sp = c.yellow, undercurl = true}, -- word that should start with a capital. 'spell'
    SpellLocal = {fg = "NONE", bg = "NONE", sp = c.green, underline = true}, -- word that is recognized by the spellchecker as one that is used in another region. 'spell'
    SpellRare = {fg = "NONE", bg = "NONE", sp = c.purple, underline = true}, -- word that is recognized by the spellchecker as one that is hardly ever used. 'spell'
    Pmenu = {fg = c.darkblue, bg = c.purple}, -- popup menu: normal item
    PmenuSel = {fg = c.purple, bg = c.darkblue}, -- popup menu: selected item
    PmenuSbar = {fg = "NONE", bg = c.alt_bg}, -- popup menu: scrollbar
    PmenuThumb = {fg = c.fg, bg = c.gray}, -- popup menu: thumb of the scrollbar
    WildMenu = {fg = c.orange, bold = true}, -- current match in 'wildmenu' completion
    CursorLineNr = {fg = c.purple, bg = "NONE", bold = true}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line
    Folded = {fg = c.gray, bg = c.alt_bg, italic = true}, -- line used for closed folds
    FoldColumn = {fg = c.gray, bg = c.alt_bg}, -- 'foldcolumn'
    LineNr = {fg = c.gray, bg = "NONE"}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set
    LineNrAbove = {link = 'LineNr'},
    LineNrBelow = {link = 'LineNr'},
    FloatBorder = {fg = c.gray, bg = c.alt_bg},
    FloatShadow = {fg = 'NONE', bg = c.black, blend = 80},
    FloatShadowThrough = {fg = 'NONE', bg = c.black, blend = 100},
    Whitespace = {link = 'NonText'}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    VertSplit = {link = 'Normal'}, -- the column separating vertically split windows
    WinSeparator = {link = 'VertSplit'},
    WinBar = {fg = c.fg, bg = c.bg, bold = true},
    WinBarNC = {link = 'WinBar'},
    CursorLine = {fg = "NONE", bg = c.alt_bg}, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set
    CursorColumn = {fg = "NONE", bg = c.alt_bg}, -- Screen-column at the cursor, when 'cursorcolumn' is set
    ColorColumn = {fg = "NONE", bg = c.alt_bg}, --  used for the columns set with 'colorcolumn'
    Visual = {fg = "NONE", bg = c.dark_gray}, -- visual mode selection
    VisualNC = {link = 'Visual'}, -- visual mode selection when Vim is "Not Owning the Selection"
    WarningMsg = {fg = c.warn, bg = "NONE"}, -- warning messages
    DiffText = {fg = c.orange, bg = c.sign_delete}, -- diff mode: Changed text within a changed line
    DiffAdd = {fg = c.green, bg = c.sign_add}, -- diff mode: Added line
    DiffChange = {fg = c.yellow, bg = c.sign_change, underline = true}, --  diff mode: Changed line
    DiffDelete = {fg = c.red, bg = c.sign_delete}, -- diff mode: Deleted line
    QuickFixLine = {fg = c.purple, bg = c.ui2_blue, reverse = true}, -- current 'quickfix' item in the quickfix window. Combined with 'hl-CursorLine' when the cursor is there
    MatchParen = {fg = c.hint, bg = "NONE", underline = true}, -- the character under the cursor or just before it, if it is a paired bracket, and its match
    MatchWord = {link = 'MatchParen'},
    MatchParenCur = {link = 'MatchParen'},
    Cursor = {fg = c.cursor_fg, bg = c.cursor_bg}, -- character under the cursor
    lCursor = {link = 'Cursor'}, -- the character under the cursor when language-mapping is used (see 'guicursor')
    CursorIM = {link = 'Cursor'}, -- like Cursor, but used when in IME mode
    TermCursor = {link = 'Cursor'}, -- cursor in a focused terminal
    TermCursorNC = {link = 'Cursor'}, -- cursor in an unfocused terminal
    Conceal = {fg = c.gray, bg = "NONE"}, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Directory = {fg = c.folder_blue, bg = "NONE"}, -- directory names (and other special names in listings)
    SpecialKey = {fg = c.blue, bg = "NONE", bold = true}, -- unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. 'hl-Whitespace'
    ErrorMsg = {fg = c.error, bg = c.bg, bold = true}, -- error messages on the command line
    Search = {fg = "NONE", bg = c.ui5_blue, reverse = true}, -- last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out
    CurSearch = {link = 'Search'},
    IncSearch = {fg = "NONE", bg = c.ui2_orange}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute = {fg = "NONE", bg = c.ui2_orange}, -- :substitute replacement text highlighting
    MoreMsg = {fg = c.orange, bg = "NONE"}, -- 'more-prompt'
    Question = {fg = c.orange, bg = "NONE"}, -- 'hit-enter' prompt and yes/no questions
    EndOfBuffer = {link = 'NonText'}, -- filler lines (~) after the end of the buffer
    NonText = {fg = c.bg, bg = "NONE"}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line)
    TabLine = {fg = c.light_gray, bg = c.line}, -- tab pages line, not active tab page label
    TabLineSel = {fg = c.fg, bg = c.line}, -- tab pages line, active tab page label
    TabLineFill = {fg = c.line, bg = c.line}, -- tab pages line, where there are no labels
    RedrawDebugNormal = {fg = 'NONE', bg = 'NONE', reverse = true},
    RedrawDebugClear = {fg = 'NONE', bg = c.yellow},
    RedrawDebugComposed = {fg = 'NONE', bg = c.green},
    RedrawDebugRecompose = {fg = 'NONE', bg = c.red},
    ToolbarLine = {fg = c.fg, bg = c.bg},
    ToolbarButton = {fg = c.fg, style = 'bold'},
    NormalMode = {fg = c.blue, style = 'reverse'},
    InsertMode = {fg = c.green, style = 'reverse'},
    ReplacelMode = {fg = c.red, style = 'reverse'},
    VisualMode = {fg = c.yellow, style = 'reverse'},
    CommandMode = {fg = c.gray, style = 'reverse'},
    Warnings = {fg = c.yellow},
    healthError = {fg = c.error},
    healthWarning = {fg = c.yellow},
    healthSuccess = {fg = c.green},
    None = {},

    -- Neovim
    NvimInternalError = {fg = c.red, bg = c.red},
    NvimAssignment = {link = 'Operator'},
    NvimPlainAssignment = {link = 'NvimAssignment'},
    NvimAugmentedAssignment = {link = 'NvimAssignment'},
    NvimAssignmentWithAddition = {link = 'NvimAugmentedAssignment'},
    NvimAssignmentWithSubtraction = {link = 'NvimAugmentedAssignment'},
    NvimAssignmentWithConcatenation = {link = 'NvimAugmentedAssignment'},
    NvimOperator = {link = 'Operator'},
    NvimUnaryOperator = {link = 'Operator'},
    NvimUnaryPlus = {link = 'Operator'},
    NvimUnaryMinus = {link = 'Operator'},
    NvimNot = {link = 'Operator'},
    NvimBinaryOperator = {link = 'Operator'},
    NvimComparison = {link = 'Operator'},
    NvimComparisonModifier = {link = 'NvimComparison'},
    NvimBinaryPlus = {link = 'NvimBinaryOperator'},
    NvimBinaryMinus = {link = 'NvimBinaryOperator'},
    NvimConcat = {link = 'NvimBinaryOperator'},
    NvimConcatOrSubscript = {link = 'NvimConcat'},
    NvimOr = {link = 'NvimBinaryOperator'},
    NvimAnd = {link = 'NvimBinaryOperator'},
    NvimMultiplication = {link = 'NvimBinaryOperator'},
    NvimDivision = {link = 'NvimBinaryOperator'},
    NvimMod = {link = 'NvimBinaryOperator'},
    NvimTernary = {link = 'Operator'},
    NvimTernaryColon = {link = 'NvimTernary'},
    NvimParenthesis = {link = 'Delimiter'},
    NvimLambda = {link = 'NvimParenthesis'},
    NvimNestingParenthesis = {link = 'NvimParenthesis'},
    NvimCallingParenthesis = {link = 'NvimParenthesis'},
    NvimSubscript = {link = 'NvimParenthesis'},
    NvimSubscriptBracket = {link = 'NvimSubscript'},
    NvimSubscriptColon = {link = 'NvimSubscript'},
    NvimContainer = {link = 'NvimParenthesis'},
    NvimDict = {link = 'NvimContainer'},
    NvimList = {link = 'NvimContainer'},
    NvimIdentifier = {link = 'Identifier'},
    NvimIdentifierScope = {link = 'NvimIdentifier'},
    NvimIdentifierScopeDelimiter = {link = 'NvimIdentifier'},
    NvimIdentifierName = {link = 'NvimIdentifier'},
    NvimIdentifierKey = {link = 'NvimIdentifier'},
    NvimColon = {link = 'Delimiter'},
    NvimComma = {link = 'Delimiter'},
    NvimArrow = {link = 'Delimiter'},
    NvimRegister = {link = 'SpecialChar'},
    NvimNumber = {link = 'Number'},
    NvimFloat = {link = 'NvimNumber'},
    NvimNumberPrefix = {link = 'Type'},
    NvimOptionSigil = {link = 'Type'},
    NvimOptionName = {link = 'NvimIdentifier'},
    NvimOptionScope = {link = 'NvimIdentifierScope'},
    NvimOptionScopeDelimiter = {link = 'NvimIdentifierScopeDelimiter'},
    NvimEnvironmentSigil = {link = 'NvimOptionSigil'},
    NvimEnvironmentName = {link = 'NvimIdentifier'},
    NvimString = {link = 'String'},
    NvimStringBody = {link = 'NvimString'},
    NvimStringQuote = {link = 'NvimString'},
    NvimStringSpecial = {link = 'SpecialChar'},
    NvimSingleQuote = {link = 'NvimStringQuote'},
    NvimSingleQuotedBody = {link = 'NvimStringBody'},
    NvimSingleQuotedQuote = {link = 'NvimStringSpecial'},
    NvimDoubleQuote = {link = 'NvimStringQuote'},
    NvimDoubleQuotedBody = {link = 'NvimStringBody'},
    NvimDoubleQuotedEscape = {link = 'NvimStringSpecial'},
    NvimFigureBrace = {link = 'NvimInternalError'},
    NvimSingleQuotedUnknownEscape = {link = 'NvimInternalError'},
    NvimSpacing = {link = 'Normal'},
    NvimInvalidSingleQuotedUnknownEscape = {link = 'NvimInternalError'},
    NvimInvalid = {link = 'Error'},
    NvimInvalidAssignment = {link = 'NvimInvalid'},
    NvimInvalidPlainAssignment = {link = 'NvimInvalidAssignment'},
    NvimInvalidAugmentedAssignment = {link = 'NvimInvalidAssignment'},
    NvimInvalidAssignmentWithAddition = {
        link = 'NvimInvalidAugmentedAssignment'
    },
    NvimInvalidAssignmentWithSubtraction = {
        link = 'NvimInvalidAugmentedAssignment'
    },
    NvimInvalidAssignmentWithConcatenation = {
        link = 'NvimInvalidAugmentedAssignment'
    },
    NvimInvalidOperator = {link = 'NvimInvalid'},
    NvimInvalidUnaryOperator = {link = 'NvimInvalidOperator'},
    NvimInvalidUnaryPlus = {link = 'NvimInvalidUnaryOperator'},
    NvimInvalidUnaryMinus = {link = 'NvimInvalidUnaryOperator'},
    NvimInvalidNot = {link = 'NvimInvalidUnaryOperator'},
    NvimInvalidBinaryOperator = {link = 'NvimInvalidOperator'},
    NvimInvalidComparison = {link = 'NvimInvalidBinaryOperator'},
    NvimInvalidComparisonModifier = {link = 'NvimInvalidComparison'},
    NvimInvalidBinaryPlus = {link = 'NvimInvalidBinaryOperator'},
    NvimInvalidBinaryMinus = {link = 'NvimInvalidBinaryOperator'},
    NvimInvalidConcat = {link = 'NvimInvalidBinaryOperator'},
    NvimInvalidConcatOrSubscript = {link = 'NvimInvalidConcat'},
    NvimInvalidOr = {link = 'NvimInvalidBinaryOperator'},
    NvimInvalidAnd = {link = 'NvimInvalidBinaryOperator'},
    NvimInvalidMultiplication = {link = 'NvimInvalidBinaryOperator'},
    NvimInvalidDivision = {link = 'NvimInvalidBinaryOperator'},
    NvimInvalidMod = {link = 'NvimInvalidBinaryOperator'},
    NvimInvalidTernary = {link = 'NvimInvalidOperator'},
    NvimInvalidTernaryColon = {link = 'NvimInvalidTernary'},
    NvimInvalidDelimiter = {link = 'NvimInvalid'},
    NvimInvalidParenthesis = {link = 'NvimInvalidDelimiter'},
    NvimInvalidLambda = {link = 'NvimInvalidParenthesis'},
    NvimInvalidNestingParenthesis = {link = 'NvimInvalidParenthesis'},
    NvimInvalidCallingParenthesis = {link = 'NvimInvalidParenthesis'},
    NvimInvalidSubscript = {link = 'NvimInvalidParenthesis'},
    NvimInvalidSubscriptBracket = {link = 'NvimInvalidSubscript'},
    NvimInvalidSubscriptColon = {link = 'NvimInvalidSubscript'},
    NvimInvalidCurly = {link = 'NvimInvalidSubscript'},
    NvimInvalidContainer = {link = 'NvimInvalidParenthesis'},
    NvimInvalidDict = {link = 'NvimInvalidContainer'},
    NvimInvalidList = {link = 'NvimInvalidContainer'},
    NvimInvalidValue = {link = 'NvimInvalid'},
    NvimInvalidIdentifier = {link = 'NvimInvalidValue'},
    NvimInvalidIdentifierScope = {link = 'NvimInvalidIdentifier'},
    NvimInvalidIdentifierScopeDelimiter = {link = 'NvimInvalidIdentifier'},
    NvimInvalidIdentifierName = {link = 'NvimInvalidIdentifier'},
    NvimInvalidIdentifierKey = {link = 'NvimInvalidIdentifier'},
    NvimInvalidColon = {link = 'NvimInvalidDelimiter'},
    NvimInvalidComma = {link = 'NvimInvalidDelimiter'},
    NvimInvalidArrow = {link = 'NvimInvalidDelimiter'},
    NvimInvalidRegister = {link = 'NvimInvalidValue'},
    NvimInvalidNumber = {link = 'NvimInvalidValue'},
    NvimInvalidFloat = {link = 'NvimInvalidNumber'},
    NvimInvalidNumberPrefix = {link = 'NvimInvalidNumber'},
    NvimInvalidOptionSigil = {link = 'NvimInvalidIdentifier'},
    NvimInvalidOptionName = {link = 'NvimInvalidIdentifier'},
    NvimInvalidOptionScope = {link = 'NvimInvalidIdentifierScope'},
    NvimInvalidOptionScopeDelimiter = {
        link = 'NvimInvalidIdentifierScopeDelimiter'
    },
    NvimInvalidEnvironmentSigil = {link = 'NvimInvalidOptionSigil'},
    NvimInvalidEnvironmentName = {link = 'NvimInvalidIdentifier'},
    NvimInvalidString = {link = 'NvimInvalidValue'},
    NvimInvalidStringBody = {link = 'NvimStringBody'},
    NvimInvalidStringQuote = {link = 'NvimInvalidString'},
    NvimInvalidStringSpecial = {link = 'NvimStringSpecial'},
    NvimInvalidSingleQuote = {link = 'NvimInvalidStringQuote'},
    NvimInvalidSingleQuotedBody = {link = 'NvimInvalidStringBody'},
    NvimInvalidSingleQuotedQuote = {link = 'NvimInvalidStringSpecial'},
    NvimInvalidDoubleQuote = {link = 'NvimInvalidStringQuote'},
    NvimInvalidDoubleQuotedBody = {link = 'NvimInvalidStringBody'},
    NvimInvalidDoubleQuotedEscape = {link = 'NvimInvalidStringSpecial'},
    NvimInvalidDoubleQuotedUnknownEscape = {link = 'NvimInvalidValue'},
    NvimInvalidFigureBrace = {link = 'NvimInvalidDelimiter'},
    NvimInvalidSpacing = {link = 'ErrorMsg'},
    NvimDoubleQuotedUnknownEscape = {link = 'NvimInvalidValue'},

    -- Code
    Boolean = {fg = c.orange, bg = 'NONE', bold = true}, -- Boolean literals: `True` and `False` in Python.
    Character = {fg = c.orange, bg = 'NONE', bold = true}, -- Character literals: `'a'` in C.
    SpecialChar = {fg = c.pink, bg = 'NONE'}, -- Special characters.
    Comment = {fg = c.green, bg = 'NONE', italic = true}, -- Line comments and block comments.
    Conditional = {fg = c.orange, bg = 'NONE', bold = true}, -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    Constant = {fg = c.green, bg = "NONE", bold = true}, -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    Debug = {fg = c.red, bg = "NONE"}, -- Debugging statements.
    Define = {fg = c.pink, bg = 'NONE'}, -- Preprocessor #define statements.
    Error = {fg = c.error, bg = c.none, bold = true, underline = true}, -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    Exception = {fg = c.cyan, bg = 'NONE'}, -- Exception related keywords: `try`, `except`, `finally` in Python.
    Float = {fg = c.blue, bg = 'NONE'}, -- Floating-point number literals.
    Function = {link = 'Identifier'}, -- Function definitions.
    Method = {link = 'Function'},
    Include = {link = 'PreProc'}, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    Keyword = {fg = c.orange, bg = "#312c37", bold = true}, -- Keywords that don't fit into other categories.
    Label = {fg = c.cyan, bg = 'NONE'}, -- GOTO labels: `label:` in C, and `::label::` in Lua.
    Number = {fg = c.purple, bg = "NONE"}, -- Numeric literals that don't fit into other categories.
    Operator = {fg = c.cyan, bg = "NONE"}, -- Binary or unary operators: `+`, and also `->` and `*` in C.
    PreProc = {fg = c.orange, bg = "NONE", bold = true}, -- Preprocessor #if, #else, #endif, etc.    Repeat = {fg = c.orange, bold = true}, -- for, do, while, etc.
    Repeat = {fg = c.orange, bg = "NONE", bold = true}, -- Keywords related to loops: `for`, `while`, etc.
    StorageClass = {fg = c.cyan, bg = "NONE"}, -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    String = {fg = c.purple, bg = "NONE"}, -- String literals.
    Tag = {fg = c.red, bg = 'NONE'}, -- Tags like HTML tag names.
    -- Bold = {fg = "NONE", bg = "NONE", bold = true}, -- Text to be represented in bold.
    -- Italic = {fg = "NONE", bg = "NONE", italic = true}, -- Text to be represented with emphasis.
    Underlined = {fg = "NONE", bg = "NONE", underline = true}, -- Text to be represented with an underline.
    Title = {fg = c.green, bg = "NONE", bold = true}, -- Text that is part of a title.
    Todo = {fg = c.magenta, bg = "NONE", bold = true}, -- Anything that needs extra attention, such as keywords like TODO or FIXME.
    Type = {fg = c.yellow, bg = "#342532", bold = true}, -- Type (and class) definitions and annotations.
    Typedef = {fg = c.red, bg = "NONE"}, -- Type definitions, e.g. `typedef` in C.
    Variable = {fg = c.white, bg = "NONE"}, -- Variable names that don't fit into other categories.
    Structure = {fg = c.purple, bg = 'NONE', bold = true}, -- struct, union, enum, etc.
    Struct = {link = 'Structure'},
    Macro = {link = 'Define'}, -- same as Define
    Delimiter = {fg = c.cyan, bg = "NONE"}, -- character that needs attention like , or .
    SpecialComment = {fg = c.gray, bg = "NONE"}, -- special things inside a comment
    Ignore = {fg = c.magenta, bg = "NONE", bold = true}, -- left blank, hidden
    Statement = {fg = c.pink, bg = 'NONE'}, -- any statement
    Identifier = {fg = c.yellow, bg = "NONE", bold = true}, -- any variable name
    PreCondit = {fg = c.cyan, bg = "NONE"}, -- preprocessor #if, #else, #endif, etc.
    Special = {fg = c.orange, bg = "NONE"}, -- any special symbol

    -- Treesitter
    TSAnnotation = {link = "PreProc"}, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.,
    TSAttribute = {link = "Variable"}, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.,
    TSBoolean = {link = "Boolean"},
    TSCharacter = {link = "Character"},
    TSCharacterSpecial = {link = "SpecialChar"},
    TSComment = {link = "Comment"},
    TSConditional = {link = "Conditional"},
    TSConstant = {link = "Constant"},
    TSConstBuiltin = {link = "Constant"}, -- Built-in constant values: `nil` in Lua.,
    TSConstMacro = {link = "Constant"}, -- Constants defined by macros: `NULL` in C.,
    TSConstructor = {link = "Type"}, -- Constructor calls and definitions: `{}` in Lua, and Java constructors.,
    TSDebug = {link = "Debug"},
    TSDefine = {link = "Define"},
    TSError = {link = "Error"},
    TSException = {link = "Exception"},
    TSField = {link = "Identifier"}, -- Object and struct fields.,
    TSFloat = {link = "Float"},
    TSFunction = {link = "Function"},
    TSFunctionCall = {link = "Function"}, -- Function calls.,
    TSFuncBuiltin = {link = "Function"}, -- Built-in functions: `print` in Lua.,
    TSFuncMacro = {link = "Function"}, -- Macro defined functions (calls and definitions: each `macro_rules` in Rust.,
    TSInclude = {link = "Include"},
    TSKeyword = {link = "Keyword"},
    TSKeywordFunction = {fg = c.green, bg = "NONE"}, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.,
    TSKeywordOperator = {link = "Keyword"}, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.,
    TSKeywordReturn = {fg = c.yellow, bg = "NONE"}, -- Keywords like `return` and `yield`.,
    TSLabel = {link = "Label"},
    TSMethod = {link = "Function"}, -- Method definitions.,
    TSMethodCall = {link = "Function"}, -- Method calls.,
    TSNamespace = {link = 'Include'}, -- Identifiers referring to modules and namespaces.,
    TSNone = {}, -- No highlighting (sets all highlight arguments to `NONE`. This group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.,
    TSNumber = {link = "Number"},
    TSOperator = {link = "Operator"},
    TSParameter = {link = "Variable"}, -- Parameters of a function.,
    TSParameterReference = {link = "Variable"}, -- References to parameters of a function.,
    TSPreProc = {link = "PreProc"},
    TSProperty = {link = 'TSField'}, -- Same as `TSField`.,
    TSPunctDelimiter = {link = "Delimiter"}, -- Punctuation delimiters: Periods, commas, semicolons, etc.,
    TSPunctBracket = {link = "Delimiter"}, -- Brackets, braces, parentheses, etc.,
    TSPunctSpecial = {link = "Delimiter"}, -- Special punctuation that doesn't fit into the previous categories.,
    TSRepeat = {link = "Repeat"},
    TSStorageClass = {link = "StorageClass"},
    TSString = {link = "String"},
    TSStringRegex = {link = "String"}, -- Regular expression literals.,
    TSStringEscape = {link = "SpecialChar"}, -- Escape characters within a string: `\n`, `\t`, etc.,
    TSStringSpecial = {link = "SpecialChar"}, -- Strings with special meaning that don't fit into the previous categories.,
    TSSymbol = {link = 'Identifier'}, -- Identifiers referring to symbols or atoms.,
    TSTag = {link = "Tag"},
    TSTagAttribute = {fg = c.yellow, bg = "NONE", italic = true}, -- HTML tag attributes.,
    TSTagDelimiter = {link = 'Delimiter'}, -- Tag delimiters like `<` `>` `/`.,
    TSText = {fg = c.alt_fg, bg = "NONE"}, -- Non-structured text. Like text in a markup language.,
    TSStrong = {link = "Bold"},
    TSEmphasis = {link = "Italic"},
    TSUnderline = {link = "Underlined"},
    TSStrike = {fg = "NONE", bg = "NONE", strikethrough = true}, -- Strikethrough text.,
    TSTitle = {link = "Title"},
    TSLiteral = {link = 'String'}, -- Literal or verbatim text.,
    TSURI = {fg = c.cyan, bg = "NONE", underline = true}, -- URIs like hyperlinks or email addresses.,
    TSMath = {fg = c.yellow, bg = "NONE"}, -- Math environments like LaTeX's `$ ... $`.,
    TSTextReference = {fg = c.yellow}, -- Footnotes, text references, citations, etc.,
    TSEnvironment = {fg = c.cyan, bg = 'NONE'}, -- Text environments of markup languages.,
    TSEnvironmentName = {fg = c.orange, bg = "NONE"}, -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.,
    TSNote = {link = "SpecialComment"}, -- Text representation of an informational note.,
    TSWarning = {link = "WarningMsg"}, -- Text representation of a warning note.,
    TSDanger = {link = "Error"}, -- Text representation of a danger note.,
    TSTodo = {link = "Todo"},
    TSType = {link = "Type"},
    TSTypeBuiltin = {fg = c.orange, bg = "NONE"}, -- Built-in types: `i32` in Rust.,
    TSTypeQualifier = {fg = c.orange, bg = "NONE"}, -- Qualifiers on types, e.g. `const` or `volatile` in C or `mut` in Rust.,
    TSTypeDefinition = {link = "Typedef"},
    TSVariable = {link = "Variable"},
    TSVariableBuiltin = {link = 'Special'}, -- Variable names defined by the language: `this` or `self` in Javascript.,
    TreesitterContext = {link = 'NormalFloat'},
    TreesitterContextLineNumber = {link = 'LineNr'},
    TSDefinitionUsage = {link = 'Visual'},
    TSDefinition = {link = 'Search'},
    TSCurrentScope = {link = 'CursorLine'},
    TSQueryLinterError = {link = 'Error'},
    TSPlaygroundLang = {link = 'String'},
    TSPlaygroundFocus = {link = 'Visual'},

    -- Markdown
    -- hl(0, "markdownBlockquote", {fg = c.orange, bg = "NONE"})
    -- hl(0, "markdownCode", {fg = c.orange, bg = "NONE"})
    -- hl(0, "markdownCodeBlock", {fg = c.orange, bg = "NONE"})
    -- hl(0, "markdownCodeDelimiter", {fg = c.orange, bg = "NONE"})
    -- hl(0, "markdownH1", {link = "Title"})
    -- hl(0, "markdownH2", {link = "Title"})
    -- hl(0, "markdownH3", {link = "Title"})
    -- hl(0, "markdownH4", {link = "Title"})
    -- hl(0, "markdownH5", {link = "Title"})
    -- hl(0, "markdownH6", {link = "Title"})
    -- hl(0, "markdownHeadingDelimiter", {fg = c.blue, bg = "NONE"})
    -- hl(0, "markdownHeadingRule", {fg = c.fg, bg = "NONE", bold = true})
    -- hl(0, "markdownId", {link = "Identifier"})
    -- hl(0, "markdownIdDeclaration", {fg = c.blue, bg = "NONE"})
    -- hl(0, "markdownIdDelimiter", {fg = c.light_gray, bg = "NONE"})
    -- hl(0, "markdownLinkDelimiter", {fg = c.light_gray, bg = "NONE"})
    -- hl(0, "markdownBold", {fg = c.blue, bg = "NONE", bold = true})
    -- hl(0, "markdownItalic", {link = "Italic"})
    -- hl(0, "markdownBoldItalic",
    -- {fg = c.yellow, bg = "NONE", bold = true, italic = true})
    -- hl(0, "markdownListMarker", {fg = c.blue, bg = "NONE"})
    -- hl(0, "markdownOrderedListMarker", {fg = c.purple, bg = "NONE"})
    -- hl(0, "markdownRule", {fg = c.gray, bg = "NONE"})
    -- hl(0, "markdownUrl", {fg = c.cyan, bg = "NONE", underdotted = true})
    -- hl(0, "markdownLinkText", {fg = c.blue, bg = "NONE"})
    -- hl(0, "markdownFootnote", {fg = c.orange, bg = "NONE"})
    -- hl(0, "markdownFootnoteDefinition", {fg = c.orange, bg = "NONE"})
    -- hl(0, "markdownEscape", {fg = c.yellow, bg = "NONE"})
    -- markdownH1Delimiter = {fg = c.cyan},
    -- markdownH2Delimiter = {fg = c.red},
    -- markdownH3Delimiter = {fg = c.green}

    -- Whichkey
    -- hl(0, "WhichKey", {fg = c.purple, bg = "NONE"})
    -- hl(0, "WhichKeySeperator", {fg = c.green, bg = "NONE"})
    -- hl(0, "WhichKeyGroup", {fg = c.blue, bg = "NONE"})
    -- hl(0, "WhichKeyDesc", {fg = c.fg, bg = "NONE"})
    -- hl(0, "WhichKeyFloat", {fg = "NONE", bg = c.alt_bg})

    -- Dev Icons
    DevIconFs = {fg = '#519aba'},
    DevIconBat = {fg = '#c1f12e'},
    DevIconDiff = {fg = '#41535b'},
    DevIconCPlusPlus = {fg = '#f34b7d'},
    DevIconBmp = {fg = '#a074c4'},
    DevIconDefault = {fg = '#6d8086'},
    DevIconCp = {fg = '#519aba'},
    DevIconDoc = {fg = '#185abd'},
    DevIconCobol = {fg = '#005ca5'},
    DevIconEjs = {fg = '#cbcb41'},
    DevIconJson = {fg = '#cbcb41'},
    DevIconVim = {fg = '#019833'},
    DevIconClojure = {fg = '#8dc149'},
    DevIconClojureC = {fg = '#8dc149'},
    DevIconClojureJS = {fg = '#519aba'},
    DevIconEex = {fg = '#a074c4'},
    DevIconClojureDart = {fg = '#519aba'},
    DevIconHeex = {fg = '#a074c4'},
    DevIconLua = {fg = '#51a0cf'},
    DevIconFish = {fg = '#4d5a5e'},
    DevIconCoffee = {fg = '#cbcb41'},
    DevIconEdn = {fg = '#519aba'},
    DevIconConfigRu = {fg = '#701516'},
    DevIconCrystal = {fg = '#000000'},
    DevIconEpp = {fg = '#ffa61a'},
    DevIconSwift = {fg = '#e37933'},
    DevIconBash = {fg = '#89e051'},
    DevIconErb = {fg = '#701516'},
    DevIconErl = {fg = '#b83998'},
    DevIconCson = {fg = '#cbcb41'},
    DevIconScala = {fg = '#cc3e44'},
    DevIconExs = {fg = '#a074c4'},
    DevIconHh = {fg = '#a074c4'},
    DevIconFsharp = {fg = '#519aba'},
    DevIconH = {fg = '#a074c4'},
    DevIconFavicon = {fg = '#cbcb41'},
    DevIconBashrc = {fg = '#89e051'},
    DevIconJl = {fg = '#a270ba'},
    DevIconEx = {fg = '#a074c4'},
    DevIconRss = {fg = '#fb9d3b'},
    DevIconNodeModules = {fg = '#e8274b'},
    DevIconConf = {fg = '#6d8086'},
    DevIconDb = {fg = '#dad8d8'},
    DevIconCxx = {fg = '#519aba'},
    DevIconGo = {fg = '#519aba'},
    DevIconTor = {fg = '#519aba'},
    DevIconFennel = {fg = '#fff3d7'},
    DevIconDesktopEntry = {fg = '#563d7c'},
    DevIconC = {fg = '#599eff'},
    DevIconFsx = {fg = '#519aba'},
    DevIconDrools = {fg = '#ffafaf'},
    DevIconFsi = {fg = '#519aba'},
    DevIconGemspec = {fg = '#701516'},
    DevIconSh = {fg = '#4d5a5e'},
    DevIconGif = {fg = '#a074c4'},
    DevIconDropbox = {fg = '#0061fe'},
    DevIconToml = {fg = '#6d8086'},
    DevIconFsscript = {fg = '#519aba'},
    DevIconDart = {fg = '#03589c'},
    DevIconBinaryGLTF = {fg = '#ffb13b'},
    DevIconLhs = {fg = '#a074c4'},
    DevIconGitLogo = {fg = '#f14c28'},
    DevIconNPMrc = {fg = '#e8274b'},
    DevIconEnv = {fg = '#faf743'},
    DevIconGodotProject = {fg = '#6d8086'},
    DevIconCs = {fg = '#596706'},
    DevIconGruntfile = {fg = '#e37933'},
    DevIconElm = {fg = '#519aba'},
    DevIconTwig = {fg = '#8dc149'},
    DevIconProlog = {fg = '#e4b854'},
    DevIconVHDL = {fg = '#019833'},
    DevIconGulpfile = {fg = '#cc3e44'},
    DevIconAi = {fg = '#cbcb41'},
    DevIconCsh = {fg = '#4d5a5e'},
    DevIconKsh = {fg = '#4d5a5e'},
    DevIconPromptPs1 = {fg = '#4d5a5e'},
    DevIconNix = {fg = '#7ebae4'},
    DevIconHaml = {fg = '#eaeae1'},
    DevIconXls = {fg = '#207245'},
    DevIconDockerfile = {fg = '#384d54'},
    DevIconCMake = {fg = '#6d8086'},
    DevIconSuo = {fg = '#854cc7'},
    DevIconZshenv = {fg = '#89e051'},
    DevIconJpeg = {fg = '#a074c4'},
    DevIconXul = {fg = '#e37933'},
    DevIconHpp = {fg = '#a074c4'},
    DevIconLicense = {fg = '#d0bf41'},
    DevIconHtml = {fg = '#e44d26'},
    DevIconPyd = {fg = '#ffe291'},
    DevIconHs = {fg = '#a074c4'},
    DevIconGDScript = {fg = '#6d8086'},
    DevIconMdx = {fg = '#519aba'},
    DevIconRake = {fg = '#701516'},
    DevIconMakefile = {fg = '#6d8086'},
    DevIconRakefile = {fg = '#701516'},
    DevIconSml = {fg = '#e37933'},
    DevIconPp = {fg = '#ffa61a'},
    DevIconRlib = {fg = '#dea584'},
    DevIconHxx = {fg = '#a074c4'},
    DevIconSql = {fg = '#dad8d8'},
    DevIconIco = {fg = '#cbcb41'},
    DevIconLock = {fg = '#bbbbbb'},
    DevIconImportConfiguration = {fg = '#ececec'},
    DevIconMint = {fg = '#87c095'},
    DevIconIni = {fg = '#6d8086'},
    DevIconPm = {fg = '#519aba'},
    DevIconSolidity = {fg = '#519aba'},
    DevIconBabelrc = {fg = '#cbcb41'},
    DevIconSln = {fg = '#854cc7'},
    DevIconJava = {fg = '#cc3e44'},
    DevIconGitIgnore = {fg = '#41535b'},
    DevIconSystemVerilog = {fg = '#019833'},
    DevIconSvg = {fg = '#ffb13b'},
    DevIconJpg = {fg = '#a074c4'},
    DevIconMl = {fg = '#e37933'},
    DevIconRproj = {fg = '#358a5b'},
    DevIconSig = {fg = '#e37933'},
    DevIconRb = {fg = '#701516'},
    DevIconCss = {fg = '#42a5f5'},
    DevIconScss = {fg = '#f55385'},
    DevIconLess = {fg = '#563d7c'},
    DevIconKotlin = {fg = '#f88a02'},
    DevIconTcl = {fg = '#1e5cb3'},
    DevIconMustache = {fg = '#e37933'},
    DevIconKotlinScript = {fg = '#f88a02'},
    DevIconGitCommit = {fg = '#41535b'},
    DevIconLeex = {fg = '#a074c4'},
    DevIconTs = {fg = '#519aba'},
    DevIconOpenTypeFont = {fg = '#ececec'},
    DevIconSass = {fg = '#f55385'},
    DevIconBashProfile = {fg = '#89e051'},
    DevIconTextResource = {fg = '#cbcb41'},
    DevIconSvelte = {fg = '#ff3e00'},
    DevIconDump = {fg = '#dad8d8'},
    DevIconD = {fg = '#427819'},
    DevIconTextScene = {fg = '#a074c4'},
    DevIconZig = {fg = '#f69a1b'},
    DevIconDsStore = {fg = '#41535b'},
    DevIconR = {fg = '#358a5b'},
    DevIconMd = {fg = '#ffffff'},
    DevIconPackageJson = {fg = '#e8274b'},
    DevIconGitAttributes = {fg = '#41535b'},
    DevIconTxt = {fg = '#89e051'},
    DevIconTex = {fg = '#3d6117'},
    DevIconGitConfig = {fg = '#41535b'},
    DevIconVerilog = {fg = '#019833'},
    DevIconJs = {fg = '#cbcb41'},
    DevIconGitlabCI = {fg = '#e24329'},
    DevIconPyo = {fg = '#ffe291'},
    DevIconMjs = {fg = '#f1e05a'},
    DevIconWebmanifest = {fg = '#f1e05a'},
    DevIconGvimrc = {fg = '#019833'},
    DevIconWebp = {fg = '#a074c4'},
    DevIconCpp = {fg = '#519aba'},
    DevIconWebpack = {fg = '#519aba'},
    DevIconJsx = {fg = '#519aba'},
    DevIconMotoko = {fg = '#9772fb'},
    DevIconLog = {fg = '#ffffff'},
    DevIconTsx = {fg = '#519aba'},
    DevIconNPMIgnore = {fg = '#e8274b'},
    DevIconPrisma = {fg = '#ffffff'},
    DevIconTerminal = {fg = '#31b53e'},
    DevIconNim = {fg = '#f3d400'},
    DevIconPhp = {fg = '#a074c4'},
    DevIconPsd = {fg = '#519aba'},
    DevIconSettingsJson = {fg = '#854cc7'},
    DevIconMixLock = {fg = '#a074c4'},
    DevIconProcfile = {fg = '#a074c4'},
    DevIconPng = {fg = '#a074c4'},
    DevIconHrl = {fg = '#b83998'},
    DevIconRmd = {fg = '#519aba'},
    DevIconZshprofile = {fg = '#89e051'},
    DevIconXml = {fg = '#e37933'},
    DevIconOPUS = {fg = '#f88a02'},
    DevIconMarkdown = {fg = '#519aba'},
    DevIconVimrc = {fg = '#019833'},
    DevIconZshrc = {fg = '#89e051'},
    DevIconPsb = {fg = '#519aba'},
    DevIconBrewfile = {fg = '#701516'},
    DevIconPy = {fg = '#ffbc03'},
    DevIconPyc = {fg = '#ffe291'},
    DevIconPackageLockJson = {fg = '#7a0d21'},
    DevIconCMakeLists = {fg = '#6d8086'},
    DevIconConfiguration = {fg = '#ececec'},
    DevIconPackedResource = {fg = '#6d8086'},
    DevIconXcPlayground = {fg = '#e37933'},
    DevIconPdf = {fg = '#b30b00'},
    DevIconGitModules = {fg = '#41535b'},
    DevIconRs = {fg = '#dea584'},
    DevIconPl = {fg = '#519aba'},
    DevIconMaterial = {fg = '#b83998'},
    DevIconGemfile = {fg = '#701516'},
    DevIconZsh = {fg = '#89e051'},
    DevIconStyl = {fg = '#8dc149'},
    DevIconPpt = {fg = '#cb4a32'},
    DevIconYml = {fg = '#6d8086'},
    DevIconVue = {fg = '#8dc149'},
    DevIconMli = {fg = '#e37933'},
    DevIconVagrantfile = {fg = '#1563ff'},
    DevIconYaml = {fg = '#6d8086'},
    DevIconHtm = {fg = '#e34c26'},
    DevIconHbs = {fg = '#f0772b'},
    DevIconSlim = {fg = '#e34c26'},
    DevIconCsv = {fg = '#89e051'},
    DevIconAwk = {fg = '#4d5a5e'},

    -- Git
    GitSignsAdd = {link = "DiffAdd"}, -- diff mode: Added line |diff.txt|
    GitSignsAddNr = {link = "GitSignsAdd"}, -- diff mode: Added line |diff.txt|
    GitSignsAddLn = {link = "GitSignsAdd"}, -- diff mode: Added line |diff.txt|
    GitSignsChange = {link = "DiffChange"}, -- diff mode: Changed line |diff.txt|
    GitSignsChangeNr = {link = "GitSignsChange"}, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn = {link = "GitSignsChange"}, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = {link = "DiffDelete"}, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteNr = {link = "GitSignsDelete"}, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn = {link = "GitSignsDelete"}, -- diff mode: Deleted line |diff.txt|
    GitSignsAddPreview = {link = 'DiffAdd'},
    GitSignsDeletePreview = {link = 'DiffDelete'},
    GitSignsCurrentLineBlame = {link = 'NonText'},
    GitSignsAddInline = {link = 'TermCursor'},
    GitSignsDeleteInline = {link = 'TermCursor'},
    GitSignsChangeInline = {link = 'TermCursor'},
    GitSignsAddLnInline = {link = 'GitSignsAddInline'},
    GitSignsChangeLnInline = {link = 'GitSignsChangeInline'},
    GitSignsDeleteLnInline = {link = 'GitSignsDeleteInline'},
    GitSignsAddLnVirtLn = {link = 'GitSignsAddLn'},
    GitSignsChangeVirtLn = {link = 'GitSignsChangeLn'},
    GitSignsDeleteVirtLn = {link = 'DiffDelete'},
    GitSignsAddLnVirtLnInLine = {link = 'GitSignsAddLnInline'},
    GitSignsChangeVirtLnInLine = {link = 'GitSignsChangeLnInline'},
    GitSignsDeleteVirtLnInLine = {link = 'GitSignsDeleteLnInline'},

    -- Octo
    OctoGreen = {fg = '#238636'},
    OctoRed = {fg = '#da3633'},
    OctoPurple = {fg = '#6f42c1'},
    OctoYellow = {fg = '#d3c846'},
    OctoBlue = {fg = '#58a6ff'},
    OctoGrey = {fg = '#2a354c'},
    OctoGreenFloat = {fg = '#238636', bg = '#ff00ff'},
    OctoRedFloat = {fg = '#da3633', bg = '#ff00ff'},
    OctoPurpleFloat = {fg = '#6f42c1', bg = '#ff00ff'},
    OctoYellowFloat = {fg = '#d3c846', bg = '#ff00ff'},
    OctoBlueFloat = {fg = '#58a6ff', bg = '#ff00ff'},
    OctoGreyFloat = {fg = '#2a354c', bg = '#ff00ff'},
    OctoBubblePurple = {fg = '#ffffff', bg = '#6f42c1'},
    OctoBubbleYellow = {fg = '#2a354c', bg = '#d3c846'},
    OctoBubbleBlue = {fg = '#2a354c', bg = '#0366d6'},
    OctoBubbleGrey = {fg = '#ffffff', bg = '#2a354c'},
    OctoBubbleDelimiterGreen = {fg = '#238636'},
    OctoBubbleDelimiterRed = {fg = '#da3633'},
    OctoBubbleDelimiterPurple = {fg = '#6f42c1'},
    OctoBubbleDelimiterYellow = {fg = '#d3c846'},
    OctoBubbleDelimiterBlue = {fg = '#0366d6'},
    OctoBubbleDelimiterGrey = {fg = '#2a354c'},
    OctoFilePanelTitle = {fg = '#58a6ff', bold = true},
    OctoFilePanelCounter = {fg = '#40ffff', bold = true},
    NormalFront = {fg = '#ffffff'},
    OctoNormalFront = {link = 'NormalFront'},
    OctoNormal = {link = 'Normal'},
    OctoCursorLine = {link = 'CursorLine'},
    OctoVertSplit = {link = 'VertSplit'},
    OctoSignColumn = {link = 'Normal'},
    OctoStatusLine = {link = 'StatusLine'},
    OctoStatusLineNC = {link = 'StatusLineNC'},
    OctoEndOfBuffer = {link = 'EndOfBuffer'},
    OctoFilePanelFileName = {link = 'NormalFront'},
    OctoFilePanelPath = {link = 'Comment'},
    OctoStatusAdded = {link = 'OctoGreen'},
    OctoStatusUntracked = {link = 'OctoGreen'},
    OctoStatusModified = {link = 'OctoBlue'},
    OctoStatusRenamed = {link = 'OctoBlue'},
    OctoStatusCopied = {link = 'OctoBlue'},
    OctoStatusTypeChange = {link = 'OctoBlue'},
    OctoStatusUnmerged = {link = 'OctoBlue'},
    OctoStatusUnknown = {link = 'OctoYellow'},
    OctoStatusDeleted = {link = 'OctoRed'},
    OctoStatusBroken = {link = 'OctoRed'},
    OctoDirty = {link = 'OctoRed'},
    OctoIssueId = {link = 'NormalFloat'},
    OctoIssueTitle = {link = 'PreProc'},
    OctoFloat = {link = 'NormalFloat'},
    OctoTimelineItemHeading = {link = 'Comment'},
    OctoTimelineMarker = {link = 'Identifier'},
    OctoSymbol = {link = 'Comment'},
    OctoDate = {link = 'Comment'},
    OctoDetailsLabel = {link = 'Title'},
    OctoDetailsValue = {link = 'Identifier'},
    OctoMissingDetails = {link = 'Comment'},
    OctoEmpty = {link = 'NormalFloat'},
    OctoBubble = {link = 'NormalFloat'},
    OctoUser = {link = 'OctoBubble'},
    OctoUserViewer = {link = 'OctoViewer'},
    OctoReaction = {link = 'OctoBubble'},
    OctoReactionViewer = {link = 'OctoViewer'},
    OctoPassingTest = {link = 'OctoGreen'},
    OctoFailingTest = {link = 'OctoRed'},
    OctoDiffstatAdditions = {link = 'OctoGreen'},
    OctoDiffstatDeletions = {link = 'OctoRed'},
    OctoDiffstatNeutral = {link = 'OctoGrey'},
    OctoStateOpen = {link = 'OctoGreen'},
    OctoStateClosed = {link = 'OctoRed'},
    OctoStateMerge = {link = 'OctoGreen'},
    OctoStatePending = {link = 'OctoYellow'},
    OctoStateApproved = {link = 'OctoGreen'},
    OctoStateChangesRequested = {link = 'OctoRed'},
    OctoStateDismissed = {link = 'OctoRed'},
    OctoStateCommented = {link = 'OctoBlue'},
    OctoStateSubmitted = {link = 'OctoGreen'},
    OctoStateOpenBubble = {link = 'OctoBubbleGreen'},
    OctoStateClosedBubble = {link = 'OctoBubbleRed'},
    OctoStateMergedBubble = {link = 'OctoBubblePurple'},
    OctoStatePendingBubble = {link = 'OctoBubbleYellow'},
    OctoStateApprovedBubble = {link = 'OctoBubbleGreen'},
    OctoStateChangesRequestedBubble = {link = 'OctoBubbleRed'},
    OctoStateDismissedBubble = {link = 'OctoBubbleRed'},
    OctoStateCommentedBubble = {link = 'OctoBubbleBlue'},
    OctoStateSubmittedBubble = {link = 'OctoBubbleGreen'},
    OctoStateOpenFloat = {link = 'OctoGreenFloat'},
    OctoStateClosedFloat = {link = 'OctoRedFloat'},
    OctoStateMergedFloat = {link = 'OctoPurpleFloat'},
    OctoStateMergedFloat = {link = 'OctoPurpleFloat'},
    OctoDiffHunkPosition = {link = 'NormalFloat'},
    OctoCommentLine = {link = 'TabLineSel'},
    OctoEditable = {bg = '#ff00ff'},
    OctoViewer = {fg = '#000000', bg = '#58a6ff'},
    OctoBubbleGreen = {fg = '#2a354c', bg = '#238636'},
    OctoBubbleRed = {fg = '#2a354c', bg = '#da3633'},
    OctoPullAdditions = {link = 'OctoGreen'},
    OctoPullDeletions = {link = 'OctoRed'},
    OctoPullModifications = {link = 'OctoYellow'},
    OctoStateMerged = {link = 'OctoPurple'},

    -- Git Blame
    -- hl(0, "gitblame", {link = "Comment"})

    -- LSP Config
    LspInfoTitle = {link = 'Title'}, -- Client name
    LspInfoList = {link = 'Function'}, -- Server name list
    LspInfoFiletype = {link = 'Type'}, -- `filetypes` area
    LspInfoTip = {link = 'Comment'}, -- Tip
    LspInfoBorder = {link = 'Label'}, -- Window border

    -- LSP
    DiagnosticHint = {fg = c.hint, bg = "NONE"},
    DiagnosticInfo = {fg = c.info, bg = "NONE"},
    DiagnosticWarn = {link = "TSWarning"},
    DiagnosticError = {link = "TSError"},
    DiagnosticOther = {fg = c.ui_purple, bg = "NONE"},
    DiagnosticSignHint = {link = 'DiagnosticHint'},
    DiagnosticSignInfo = {link = 'DiagnosticInfo'},
    DiagnosticSignWarn = {link = 'DiagnosticWarn'},
    DiagnosticSignError = {link = 'DiagnosticError'},
    DiagnosticSignOther = {link = "DiagnosticOther"},
    DiagnosticSignWarning = {link = "DiagnosticWarn"},
    DiagnosticFloatingHint = {link = 'DiagnosticHint'},
    DiagnosticFloatingInfo = {link = 'DiagnosticInfo'},
    DiagnosticFloatingWarn = {link = 'DiagnosticWarn'},
    DiagnosticFloatingError = {link = 'DiagnosticError'},
    DiagnosticUnderlineHint = {
        fg = "NONE",
        bg = "NONE",
        sp = c.hint,
        undercurl = true
    },
    DiagnosticUnderlineInfo = {
        fg = "NONE",
        bg = "NONE",
        sp = c.info,
        undercurl = true
    },
    DiagnosticUnderlineWarn = {
        fg = "NONE",
        bg = "NONE",
        sp = c.warn,
        undercurl = true
    },
    DiagnosticUnderlineError = {
        fg = "NONE",
        bg = "NONE",
        sp = c.error,
        undercurl = true
    },
    -- DiagnosticSignInformation = {link = "DiagnosticInfo"},
    DiagnosticVirtualTextHint = {link = 'DiagnosticHint'},
    DiagnosticVirtualTextInfo = {link = 'DiagnosticInfo'},
    DiagnosticVirtualTextWarn = {link = 'DiagnosticWarn'},
    DiagnosticVirtualTextError = {link = 'DiagnosticError'},
    -- hl(0, "LspDiagnosticsError", {fg = c.error, bg = "NONE"})
    -- hl(0, "LspDiagnosticsWarning", {fg = c.warn, bg = "NONE"})
    -- hl(0, "LspDiagnosticsInfo", {fg = c.info, bg = "NONE"})
    -- hl(0, "LspDiagnosticsInformation", {link = "LspDiagnosticsInfo"})
    -- hl(0, "LspDiagnosticsHint", {fg = c.hint, bg = "NONE"})
    -- hl(0, "LspDiagnosticsDefaultError", {link = "LspDiagnosticsError"}) -- used as the base "Error" highlight group (except Underline)
    -- hl(0, "LspDiagnosticsDefaultWarning", {link = "LspDiagnosticsWarning"}) -- used as the base "Warning" highlight group (except Underline)
    -- hl(0, "LspDiagnosticsDefaultInformation", {link = "LspDiagnosticsInfo"}) -- used as the base "Information" highlight group (except Underline)
    -- hl(0, "LspDiagnosticsDefaultInfo", {link = "LspDiagnosticsInfo"}) -- used as the base "Information" highlight group (except Underline)
    -- hl(0, "LspDiagnosticsDefaultHint", {link = "LspDiagnosticsHint"}) -- used as the base "Hint" highlight group (except Underline)
    -- hl(0, "LspDiagnosticsVirtualTextError",
    -- {link = "DiagnosticVirtualTextError"}) -- used for "Error" diagnostic virtual text
    -- hl(0, "LspDiagnosticsVirtualTextWarning",
    -- {link = "DiagnosticVirtualTextWarn"}) -- used for "Warning" diagnostic virtual text
    -- hl(0, "LspDiagnosticsVirtualTextInformation",
    -- {link = "DiagnosticVirtualTextInfo"}) -- used for "Information" diagnostic virtual text
    -- hl(0, "LspDiagnosticsVirtualTextInfo", {link = "DiagnosticVirtualTextInfo"}) -- used for "Information" diagnostic virtual text
    -- hl(0, "LspDiagnosticsVirtualTextHint", {link = "DiagnosticVirtualTextHint"}) -- used for "Hint" diagnostic virtual text
    -- hl(0, "LspDiagnosticsFloatingError", {link = "LspDiagnosticsError"}) -- used for "Error" diagnostic messages in the diagnostics float
    -- hl(0, "LspDiagnosticsFloatingWarning", {link = "LspDiagnosticsWarning"}) -- used for "Warning" diagnostic messages in the diagnostics float
    -- hl(0, "LspDiagnosticsFloatingInformation", {link = "LspDiagnosticsInfo"}) -- used for "Information" diagnostic messages in the diagnostics float
    -- hl(0, "LspDiagnosticsFloatingInfo", {link = "LspDiagnosticsInfo"}) -- used for "Information" diagnostic messages in the diagnostics float
    -- hl(0, "LspDiagnosticsFloatingHint", {link = "LspDiagnosticsHint"}) -- used for "Hint" diagnostic messages in the diagnostics float
    -- hl(0, "LspDiagnosticsSignError", {link = "LspDiagnosticsError"}) -- used for "Error" diagnostic signs in sign column
    -- hl(0, "LspDiagnosticsSignWarning", {link = "LspDiagnosticsWarning"}) -- used for "Warning" diagnostic signs in sign column
    -- hl(0, "LspDiagnosticsSignInformation", {link = "LspDiagnosticsInfo"}) -- used for "Information" diagnostic signs in sign column
    -- hl(0, "LspDiagnosticsSignInfo", {link = "LspDiagnosticsInfo"}) -- used for "Information" diagnostic signs in sign column
    -- hl(0, "LspDiagnosticsSignHint", {link = "LspDiagnosticsHint"}) -- used for "Hint" diagnostic signs in sign column
    -- hl(0, "LspDiagnosticsUnderlineError", {link = "DiagnosticUnderlineError"}) -- used to underline "Error" diagnostics
    -- hl(0, "LspDiagnosticsUnderlineWarning", {link = "DiagnosticUnderlineWarn"}) -- used to underline "Warning" diagnostics
    -- hl(0, "LspDiagnosticsUnderlineInformation",
    -- {link = "DiagnosticUnderlineInfo"}) -- used to underline "Information" diagnostics
    -- hl(0, "LspDiagnosticsUnderlineInfo", {link = "DiagnosticUnderlineInfo"}) -- used to underline "Information" diagnostics
    -- hl(0, "LspDiagnosticsUnderlineHint", {link = "DiagnosticUnderlineHint"}) -- used to underline "Hint" diagnostics
    -- hl(0, "LspReferenceRead", {fg = c.purple, bg = c.reference}) -- used for highlighting "read" references
    -- hl(0, "LspReferenceText", {fg = c.purple, bg = c.reference}) -- used for highlighting "text" references
    -- hl(0, "LspReferenceWrite", {fg = c.purple, bg = c.reference}) -- used for highlighting "write" references
    -- hl(0, "LspCodeLens", {fg = c.context, bg = "NONE", italic = true})
    -- hl(0, "LspCodeLensSeparator", {fg = c.context, bg = "NONE", italic = true})
    -- hl(0, "LspSignatureActiveParameter", {link = 'Search'})

    -- LSP Inlay Hints
    LspInlayHint = {fg = '#80a0ff', bg = '#666666'},

    -- LSP Trouble
    LspTroubleCount = {fg = c.purple, bg = c.darkblue},
    LspTroubleError = {link = 'LspDiagnosticsDefaultError'},
    LspTroubleNormal = {link = 'Normal'},
    LspTroubleTextInformation = {link = 'LspTroubleText'},
    LspTroubleSignWarning = {link = 'LspDiagnosticsSignWarning'},
    LspTroubleLocation = {fg = c.darkblue},
    LspTroubleWarning = {link = 'LspDiagnosticsDefaultWarning'},
    LspTroublePreview = {link = 'Search'},
    LspTroubleTextError = {link = 'LspTroubleText'},
    LspTroubleSignInformation = {link = 'LspDiagnosticsSignInformation'},
    LspTroubleIndent = {link = 'LineNr'},
    LspTroubleSource = {link = 'Comment'},
    LspTroubleSignHint = {link = 'LspDiagnosticsSignHint'},
    LspTroubleSignOther = {link = 'LspTroubleSignInformation'},
    LspTroubleFoldIcon = {link = 'CursorLineNr'},
    LspTroubleTextWarning = {link = 'LspTroubleText'},
    LspTroubleCode = {link = 'Comment'},
    LspTroubleInformation = {link = 'LspDiagnosticsDefaultInformation'},
    LspTroubleSignError = {link = 'LspDiagnosticsSignError'},
    LspTroubleFile = {link = 'Directory'},
    LspTroubleHint = {link = 'LspDiagnosticsDefaultHint'},
    LspTroubleTextHint = {link = 'LspTroubleText'},
    LspTroubleText = {link = 'Normal'},
    TroubleCount = {link = "LspTroubleCount"},
    TroubleError = {link = "LspTroubleError"},
    TroubleNormal = {link = "LspTroubleNormal"},
    TroubleTextInformation = {link = "LspTroubleTextInformation"},
    TroubleSignWarning = {link = "LspTroubleSignWarning"},
    TroubleLocation = {link = "LspTroubleLocation"},
    TroubleWarning = {link = "LspTroubleWarning"},
    TroublePreview = {link = "LspTroublePreview"},
    TroubleTextError = {link = "LspTroubleTextError"},
    TroubleSignInformation = {link = "LspTroubleSignInformation"},
    TroubleIndent = {link = "LspTroubleIndent"},
    TroubleSource = {link = "LspTroubleSource"},
    TroubleSignHint = {link = "LspTroubleSignHint"},
    TroubleSignOther = {link = "LspTroubleSignOther"},
    TroubleFoldIcon = {link = "LspTroubleFoldIcon"},
    TroubleTextWarning = {link = "LspTroubleTextWarning"},
    TroubleCode = {link = "LspTroubleCode"},
    TroubleInformation = {link = "LspTroubleInformation"},
    TroubleSignError = {link = "LspTroubleSignError"},
    TroubleFile = {link = "LspTroubleFile"},
    TroubleHint = {link = "LspTroubleHint"},
    TroubleTextHint = {link = "LspTroubleTextHint"},
    TroubleText = {link = "LspTroubleText"},

    -- LspSaga
    -- hl(0, "LspSagaFinderSelection", {fg = c.green})
    -- hl(0, "LspFloatWinNormal", {fg = c.purple})
    -- hl(0, "LspFloatWinBorder", {fg = c.purple})
    -- hl(0, "LspSagaBorderTitle", {fg = c.cyan})
    -- hl(0, "LspSagaHoverBorder", {fg = c.paleblue})
    -- hl(0, "TargetWord", {fg = c.cyan})
    -- hl(0, "ReferencesCount", {fg = c.purple})
    -- hl(0, "DefinitionCount", {fg = c.purple})
    -- hl(0, "TargetFileName", {fg = c.green})
    -- hl(0, "DefinitionIcon", {fg = c.blue})
    -- hl(0, "ReferencesIcon", {fg = c.blue})
    -- hl(0, "ProviderTruncateLine", {fg = c.black})
    -- hl(0, "SagaShadow", {fg = c.black})
    -- hl(0, "DiagnosticTruncateLine", {fg = c.fg})
    -- hl(0, "DefinitionPreviewTitle", {fg = c.green, bold = true})
    -- hl(0, "LspSagaShTruncateLine", {fg = c.black})
    -- hl(0, "LspSagaDocTruncateLine", {fg = c.black})
    -- hl(0, "LineDiagTruncateLine", {fg = c.gray})
    -- hl(0, "LspSagaCodeActionTitle", {fg = c.paleblue})
    -- hl(0, "LspSagaCodeActionTruncateLine", {fg = c.black})
    -- hl(0, "LspSagaCodeActionContent", {fg = c.purple})
    -- hl(0, "LspSagaRenamePromptPrefix", {fg = c.green})
    -- hl(0, "LspSagaRenameBorder", {fg = c.green})
    -- hl(0, "LspSagaHoverBorder", {fg = c.paleblue})
    -- hl(0, "LspSagaSignatureHelpBorder", {fg = c.pink})
    -- hl(0, "LspSagaCodeActionBorder", {fg = c.blue})
    -- hl(0, "LspSagaAutoPreview", {fg = c.pink})
    -- hl(0, "LspSagaDefPreviewBorder", {fg = c.green})
    -- hl(0, "LspLinesDiagBorder", {fg = c.yellow})

    -- Bufferline

    -- Neogit
    -- hl(0, "NeogitBranch", {fg = c.paleblue})
    -- hl(0, "NeogitRemote", {fg = c.purple})
    -- hl(0, "NeogitHunkHeader", {fg = c.fg, bg = c.purple})
    -- hl(0, "NeogitHunkHeaderHighlight", {fg = c.blue, bg = c.purple})
    -- hl(0, "NeogitDiffContextHighlight", {fg = c.darkblue, bg = c.purple})
    -- hl(0, "NeogitDiffDeleteHighlight", {fg = c.red})
    -- hl(0, "NeogitDiffAddHighlight", {fg = c.green})
    -- hl(0, "NeogitObjectId", {fg = c.green})
    -- hl(0, "NeogitCommitMessage", {fg = c.yellow})
    -- hl(0, "NeogitDiffAdd", {link = "NeogitDiffAddHighlight"})
    -- hl(0, "NeogitDiffDelete", {link = "NeogitDiffDeleteHighlight"})
    -- hl(0, "NeogitStash", {fg = c.green})
    -- hl(0, "NeogitUnmergedInto", {fg = c.yellow})
    -- hl(0, "NeogitUnpulledFrom", {fg = c.yellow})
    -- hl(0, "NeogitUntrackedfiles", {fg = c.yellow})
    -- hl(0, "NeogitUntrackedfilesRegion", {fg = c.yellow})
    -- hl(0, "NeogitUnstagedchanges", {fg = c.yellow})
    -- hl(0, "NeogitUnstagedchangesRegion", {fg = c.yellow})
    -- hl(0, "NeogitUnmergedchanges", {fg = c.yellow})
    -- hl(0, "NeogitUnmergedchangesRegion", {fg = c.yellow})
    -- hl(0, "NeogitUnpulledchanges", {fg = c.yellow})
    -- hl(0, "NeogitUnpulledchangesRegion", {fg = c.yellow})
    -- hl(0, "NeogitStagedchanges", {fg = c.yellow})
    -- hl(0, "NeogitStagedchangesRegion", {fg = c.yellow})
    -- hl(0, "NeogitStashes", {fg = c.yellow})
    -- hl(0, "NeogitStashesRegion", {fg = c.yellow})
    -- hl(0, "NeogitHeadRegion", {fg = c.yellow})
    -- hl(0, "NeogitPushRegion", {fg = c.yellow})
    -- hl(0, "NeogitUnmergedIntoRegion", {fg = c.yellow})
    -- hl(0, "NeogitUnpulledFromRegion", {fg = c.yellow})
    -- hl(0, "NeogitDiffAddRegion", {fg = c.yellow})
    -- hl(0, "NeogitDiffDeleteRegion", {fg = c.yellow})
    -- hl(0, "NeogitFold", {fg = c.none})

    -- GitGutter
    -- hl(0, "GitGutterAdd", {fg = c.green}) -- diff mode: Added line |diff.txt|
    -- hl(0, "GitGutterChange", {fg = c.yellow}) -- diff mode: Changed line |diff.txt|
    -- hl(0, "GitGutterDelete", {fg = c.red}) -- diff mode: Deleted line |diff.txt|

    -- Telescope
    -- hl(0, "TelescopeSelection", {fg = c.orange})
    -- hl(0, "TelescopeSelectionCaret", {fg = c.error})
    -- hl(0, "TelescopeMultiSelection", {fg = c.gray})
    -- hl(0, "TelescopeMultiIcon", {link = 'Identifier'})
    -- hl(0, "TelescopeNormal", {fg = c.fg, bg = c.alt_bg})
    -- hl(0, "TelescopePreviewNormal", {link = 'TelescopeNormal'})
    -- hl(0, "TelescopePromptNormal", {link = 'TelescopeNormal'})
    -- hl(0, "TelescopeResultsNormal", {link = 'TelescopeNormal'})
    -- hl(0, "TelescopeBorder", {fg = c.alt_fg, bg = "NONE"})
    -- hl(0, "TelescopePromptBorder", {link = 'TelescopeBorder'})
    -- hl(0, "TelescopeResultsBorder", {fg = c.white})
    -- hl(0, "TelescopePreviewBorder", {link = 'TelescopeBorder'})
    -- hl(0, "TelescopeTitle", {fg = c.orange, bg = "NONE"})
    -- hl(0, "TelescopePromptTitle", {link = 'TelescopeTitle'})
    -- hl(0, "TelescopeResultsTitle", {link = 'TelescopeTitle'})
    -- hl(0, "TelescopePreviewTitle", {link = 'TelescopeTitle'})
    -- hl(0, "TelescopePromptCounter", {fg = c.red, bg = "NONE"})
    -- hl(0, "TelescopeMatching", {fg = c.cyan, bg = "NONE", bold = true, italic = true})
    -- hl(0, "TelescopePromptPrefix", {fg = c.hint, bg = "NONE"})
    -- hl(0, "TelescopePreviewLine", {fg = c.none, bg = c.selection})
    -- hl(0, "TelescopePreviewMatch", {fg = c.purple, bg = c.white, reverse = true})
    -- hl(0, "TelescopePreviewPipe", {link = 'Constant'})
    -- hl(0, "TelescopePreviewCharDev", {link = 'Constant'})
    -- hl(0, "TelescopePreviewDirectory", {link = 'Directory'})
    -- hl(0, "TelescopePreviewBlock", {link = 'Constant'})
    -- hl(0, "TelescopePreviewLink", {fg = c.red})
    -- hl(0, "TelescopePreviewSocket", {link = 'Statement'})
    -- hl(0, "TelescopePreviewRead", {link = 'Constant'})
    -- hl(0, "TelescopePreviewWrite", {link = 'Statement'})
    -- hl(0, "TelescopePreviewExecute", {link = 'String'})
    -- hl(0, "TelescopePreviewHyphen", {fg = c.red, bg = "NONE"})
    -- hl(0, "TelescopePreviewSticky", {link = 'Keyword'})
    -- hl(0, "TelescopePreviewSize", {link = 'String'})
    -- hl(0, "TelescopePreviewUser", {link = 'Constant'})
    -- hl(0, "TelescopePreviewGroup", {link = 'Constant'})
    -- hl(0, "TelescopePreviewDate", {link = 'Directory'})
    -- hl(0, "TelescopePreviewMessage", {link = 'TelescopePreviewNormal'})
    -- hl(0, "TelescopePreviewMessageFillchar", {link = 'TelescopePreviewMessage'})
    -- hl(0, "TelescopeResultsClass", {link = 'Function'})
    -- hl(0, "TelescopeResultsConstant", {link = 'Constant'})
    -- hl(0, "TelescopeResultsField", {link = 'Function'})
    -- hl(0, "TelescopeResultsFunction", {link = 'Function'})
    -- hl(0, "TelescopeResultsMethod", {link = 'Method'})
    -- hl(0, "TelescopeResultsOperator", {link = 'Operator'})
    -- hl(0, "TelescopeResultsStruct", {link = 'Struct'})
    -- hl(0, "TelescopeResultsVariable", {link = 'SpecialChar'})
    -- hl(0, "TelescopeResultsLineNr", {link = 'LineNr'})
    -- hl(0, "TelescopeResultsIdentifier", {link = 'Identifier'})
    -- hl(0, "TelescopeResultsNumber", {link = 'Number'})
    -- hl(0, "TelescopeResultsComment", {link = 'Comment'})
    -- hl(0, "TelescopeResultsSpecialComment", {link = 'SpecialComment'})
    -- hl(0, "TelescopeResultsFileIcon", {link = 'Normal'})
    -- hl(0, "TelescopeResultsDiffChange", {link = 'DiffChange'})
    -- hl(0, "TelescopeResultsDiffAdd", {link = 'DiffAdd'})
    -- hl(0, "TelescopeResultsDiffDelete", {link = 'DiffDelete'})
    -- hl(0, "TelescopeResultsDiffUntracked", {link = 'NonText'})
    -- NvimTree
    NvimTreeSymlink = {fg = '#ffff60', bg = "NONE", bold = true},
    NvimTreeFolderName = {link = "Directory"},
    NvimTreeRootFolder = {fg = '#ff80ff', bg = "NONE", bold = true},
    NvimTreeFolderIcon = {fg = '#8094b4'},
    NvimTreeFileIcon = {},
    NvimTreeEmptyFolderName = {link = 'Directory'},
    NvimTreeOpenedFolderName = {link = 'Directory'},
    NvimTreeExecFile = {fg = '#ffa0a0', bg = "NONE", bold = true},
    NvimTreeOpenedFile = {fg = '#ffa0a0', bg = 'NONE', bold = true},
    NvimTreeSpecialFile = {
        fg = '#ff80ff',
        bg = "NONE",
        bold = true,
        underline = true
    },
    NvimTreeImageFile = {fg = '#ff80ff', bg = "NONE", bold = true},
    NvimTreeIndentMarker = {fg = '#8094b4', bg = "NONE"},
    NvimTreeLspDiagnosticsError = {link = "LspDiagnosticsError"},
    NvimTreeLspDiagnosticsWarning = {link = "LspDiagnosticsWarning"},
    NvimTreeLspDiagnosticsInformation = {link = "LspDiagnosticsInfo"},
    NvimTreeLspDiagnosticsHint = {link = "LspDiagnosticsHint"},
    NvimTreeGitDirty = {fg = '#ffff60', bg = "NONE"},
    NvimTreeGitStaged = {fg = '#ffa0a0', bg = "NONE"},
    NvimTreeGitMerge = {fg = '#ffa0a0', bg = "NONE"},
    NvimTreeGitRenamed = {fg = '#ff80ff', bg = "NONE"},
    NvimTreeGitNew = {fg = '#ff80ff', bg = "NONE"},
    NvimTreeGitDeleted = {fg = '#ffff60', bg = "NONE"},
    NvimTreeGitIgnored = {link = 'Comment'},
    NvimTreeWindowPicker = {fg = '#ededed', bg = '#4493c8', bold = true},
    NvimTreeNormal = {link = 'Normal'},
    NvimTreeEndOfBuffer = {link = 'EndOfBuffer'},
    NvimTreeCursorLine = {link = 'CursorLine'},
    NvimTreeVertSplit = {link = 'VertSplit'},
    NvimTreeWinSeparator = {link = 'VertSplit'},
    NvimTreeCursorColumn = {link = 'CursorColumn'},
    NvimTreeFileDirty = {link = 'NvimTreeGitDirty'},
    NvimTreeFileStaged = {link = 'NvimTreeGitStaged'},
    NvimTreeFileMerge = {link = 'NvimTreeGitMerge'},
    NvimTreeFileRenamed = {link = 'NvimTreeGitRenamed'},
    NvimTreeFileNew = {link = 'NvimTreeGitNew'},
    NvimTreeFileDeleted = {link = 'NvimTreeGitDeleted'},
    NvimTreeFileIgnored = {link = 'NvimTreeGitIgnored'},
    NvimTreeLiveFilterPrefix = {fg = '#ff80ff', bold = true},
    NvimTreeLiveFilterValue = {bold = true},
    NvimTreeBookmark = {fg = '#ffa0a0'},
    NvimTreeSignColumn = {link = 'NvimTreeNormal'},
    NvimTreeStatusLine = {link = 'StatusLine'},
    NvimTreeStatusLineNC = {link = 'StatusLineNC'},
    NvimTreePopup = {link = 'Normal'},
    NvimTreeNormalNC = {link = 'NvimTreeNormal'},

    -- Buffer
    -- hl(0, "BufferCurrent", {fg = c.fg, bg = c.bg})
    -- hl(0, "BufferCurrentIndex", {fg = c.fg, bg = c.bg})
    -- hl(0, "BufferCurrentMod", {fg = c.info, bg = c.bg})
    -- hl(0, "BufferCurrentSign", {fg = c.hint, bg = c.bg})
    -- hl(0, "BufferCurrentTarget", {fg = c.red, bg = c.bg, bold = true})
    -- hl(0, "BufferVisible", {fg = c.fg, bg = c.bg})
    -- hl(0, "BufferVisibleIndex", {fg = c.fg, bg = c.bg})
    -- hl(0, "BufferVisibleMod", {fg = c.info, bg = c.bg})
    -- hl(0, "BufferVisibleSign", {fg = c.gray, bg = c.bg})
    -- hl(0, "BufferVisibleTarget", {fg = c.red, bg = c.bg, bold = true})
    -- hl(0, "BufferInactive", {fg = c.gray, bg = c.alt_bg})
    -- hl(0, "BufferInactiveIndex", {fg = c.gray, bg = c.alt_bg})
    -- hl(0, "BufferInactiveMod", {fg = c.info, bg = c.alt_bg})
    -- hl(0, "BufferInactiveSign", {fg = c.gray, bg = c.alt_bg})
    -- hl(0, "BufferInactiveTarget", {fg = c.red, bg = c.alt_bg, bold = true})

    -- Status Line
    StatusLine = {fg = c.fg, bg = c.bg}, -- status line of current window
    StatusLineNC = {fg = c.darkblue, bg = c.disabled}, -- status lines of not-current windows.Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window
    StatusLineSeparator = {fg = c.line, bg = "NONE"},
    StatusLineTerm = {fg = c.line, bg = "NONE"},
    StatusLineTermNC = {fg = c.line, bg = "NONE"},

    -- IndentBlankline
    -- hl(0, "IndentBlanklineChar", {fg = c.dark_gray, bg = "NONE", nocombine = true}) -- Highlight of indent character.
    -- hl(0, "IndentBlanklineSpaceChar", {link = 'IndentBlanklineChar'}) -- Highlight of space character.
    -- hl(0, "IndentBlanklineSpaceCharBlankline", {link = 'IndentBlanklineChar'}) -- Highlight of space character on blank lines.
    -- hl(0, "IndentBlanklineContextChar", {fg = c.context, bg = "NONE", nocombine = true}) -- Highlight of indent character when base of current context. Only used when |g:indent_blankline_show_current_context| is active
    -- hl(0, "IndentBlanklineContextSpaceChar", {link = 'IndentBlanklineContextChar'}) -- Highlight of space characters one indent level of the current context. Only used when |g:indent_blankline_show_current_context| is active
    -- hl(0, "IndentBlanklineContextStart", {fg = "NONE", bg = "NONE", underline = true}) -- Highlight of the first line of the current context. Only used when |g:indent_blankline_show_current_context_start| is active

    -- Illuminate
    -- hl(0, "IlluminatedWordText", {link = 'Underlined'}) -- Default highlight group used for references if no kind information is available.
    -- hl(0, "IlluminatedWordRead", {link = 'Underlined'}) -- Highlight group used for references of kind read.
    -- hl(0, "IlluminatedWordWrite", {link = 'Underlined'}) -- Highlight group used for references of kind write.

    -- Lualine
    lualine_b_normal = {fg = '#a9a9a9', bg = '#000000'},
    lualine_c_normal = {fg = '#505050', bg = '#000000'},
    lualine_a_normal = {fg = '#000000', bg = '#a9a9a9', bold = true},
    lualine_b_visual = {fg = '#ffa500', bg = '#000000'},
    lualine_c_visual = {fg = '#505050', bg = '#000000'},
    lualine_a_visual = {fg = '#000000', bg = '#ffa500', bold = true},
    lualine_b_replace = {fg = '#ffa0a0', bg = '#000000'},
    lualine_c_replace = {fg = '#505050', bg = '#000000'},
    lualine_a_replace = {fg = '#000000', bg = '#ffa0a0', bold = true},
    lualine_b_terminal = {fg = '#40ffff', bg = '#000000'},
    lualine_c_terminal = {fg = '#505050', bg = '#000000'},
    lualine_a_terminal = {fg = '#000000', bg = '#40ffff', bold = true},
    lualine_b_inactive = {fg = '#a9a9a9', bg = '#000000'},
    lualine_c_inactive = {fg = '#505050', bg = '#000000'},
    lualine_a_inactive = {fg = '#000000', bg = '#a9a9a9', bold = true},
    lualine_b_command = {fg = '#40ffff', bg = '#000000'},
    lualine_c_command = {fg = '#505050', bg = '#000000'},
    lualine_a_command = {fg = '#000000', bg = '#40ffff', bold = true},
    lualine_b_insert = {fg = '#ffa0a0', bg = '#000000'},
    lualine_c_insert = {fg = '#505050', bg = '#000000'},
    lualine_a_insert = {fg = '#000000', bg = '#ffa0a0', bold = true},
    lualine_b_branch_normal = {fg = '#ffb86c', bg = '#000000', bold = true},
    lualine_b_branch_insert = {fg = '#ffb86c', bg = '#000000', bold = true},
    lualine_b_branch_visual = {fg = '#ffb86c', bg = '#000000', bold = true},
    lualine_b_branch_replace = {fg = '#ffb86c', bg = '#000000', bold = true},
    lualine_b_branch_command = {fg = '#ffb86c', bg = '#000000', bold = true},
    lualine_b_branch_terminal = {fg = '#ffb86c', bg = '#000000', bold = true},
    lualine_b_branch_inactive = {fg = '#ffb86c', bg = '#000000', bold = true},
    lualine_b_branch_0_normal = {fg = '#ffb86c', bg = '#000000'},
    lualine_b_branch_0_insert = {fg = '#ffb86c', bg = '#000000'},
    lualine_b_branch_0_visual = {fg = '#ffb86c', bg = '#000000'},
    lualine_b_branch_0_replace = {fg = '#ffb86c', bg = '#000000'},
    lualine_b_branch_0_command = {fg = '#ffb86c', bg = '#000000'},
    lualine_b_branch_0_terminal = {fg = '#ffb86c', bg = '#000000'},
    lualine_b_branch_0_inactive = {fg = '#ffb86c', bg = '#000000'},
    lualine_b_diff_added_normal = {fg = '#90ee90', bg = '#000000'},
    lualine_b_diff_added_insert = {fg = '#90ee90', bg = '#000000'},
    lualine_b_diff_added_visual = {fg = '#90ee90', bg = '#000000'},
    lualine_b_diff_added_replace = {fg = '#90ee90', bg = '#000000'},
    lualine_b_diff_added_command = {fg = '#90ee90', bg = '#000000'},
    lualine_b_diff_added_terminal = {fg = '#90ee90', bg = '#000000'},
    lualine_b_diff_added_inactive = {fg = '#90ee90', bg = '#000000'},
    lualine_b_diff_modified_normal = {fg = '#f0e130', bg = '#000000'},
    lualine_b_diff_modified_insert = {fg = '#f0e130', bg = '#000000'},
    lualine_b_diff_modified_visual = {fg = '#f0e130', bg = '#000000'},
    lualine_b_diff_modified_replace = {fg = '#f0e130', bg = '#000000'},
    lualine_b_diff_modified_command = {fg = '#f0e130', bg = '#000000'},
    lualine_b_diff_modified_terminal = {fg = '#f0e130', bg = '#000000'},
    lualine_b_diff_modified_inactive = {fg = '#f0e130', bg = '#000000'},
    lualine_b_diff_removed_normal = {fg = '#0000ff', bg = '#000000'},
    lualine_b_diff_removed_insert = {fg = '#0000ff', bg = '#000000'},
    lualine_b_diff_removed_visual = {fg = '#0000ff', bg = '#000000'},
    lualine_b_diff_removed_replace = {fg = '#0000ff', bg = '#000000'},
    lualine_b_diff_removed_command = {fg = '#0000ff', bg = '#000000'},
    lualine_b_diff_removed_terminal = {fg = '#0000ff', bg = '#000000'},
    lualine_b_diff_removed_inactive = {fg = '#0000ff', bg = '#000000'},
    lualine_b_diagnostics_error = {link = 'DiagnosticError'},
    lualine_b_diagnostics_warn = {link = 'DiagnosticWarn'},
    lualine_b_diagnostics_info = {link = 'DiagnosticInfo'},
    lualine_b_diagnostics_hint = {link = 'DiagnosticHint'},
    lualine_a_5_normal = {fg = '#569cd6', bg = '#32363e'},
    lualine_a_5_insert = {fg = '#569cd6', bg = '#32363e'},
    lualine_a_5_visual = {fg = '#569cd6', bg = '#32363e'},
    lualine_a_5_replace = {fg = '#569cd6', bg = '#32363e'},
    lualine_a_5_command = {fg = '#569cd6', bg = '#32363e'},
    lualine_a_5_terminal = {fg = '#569cd6', bg = '#32363e'},
    lualine_a_5_inactive = {fg = '#569cd6', bg = '#32363e'},
    lualine_c_filename_normal = {fg = '#50fa7b', bg = '#000000', bold = true},
    lualine_c_filename_insert = {fg = '#50fa7b', bg = '#000000', bold = true},
    lualine_c_filename_visual = {fg = '#50fa7b', bg = '#000000', bold = true},
    lualine_c_filename_replace = {fg = '#50fa7b', bg = '#000000', bold = true},
    lualine_c_filename_command = {fg = '#50fa7b', bg = '#000000', bold = true},
    lualine_c_filename_terminal = {fg = '#50fa7b', bg = '#000000', bold = true},
    lualine_c_filename_inactive = {fg = '#50fa7b', bg = '#000000', bold = true},

    -- StartupTime
    -- hl(0, "StartupTimeStartupKey", {link = 'Normal'})
    -- hl(0, "StartupTimeStartupValue", {link = 'Title'})
    -- hl(0, "StartupTimeHeader", {link = 'ModeMsg'})
    -- hl(0, "StartupTimeSourcingEvent", {link = 'Type'})
    -- hl(0, "StartupTimeOtherEvent", {link = 'Identifier'})
    -- hl(0, "StartupTimeTime", {link = 'Directory'})
    -- hl(0, "StartupTimePercent", {link = 'Special'})
    -- hl(0, "StartupTimePlot", {link = 'Normal'})

    -- DAP Virtual Text
    NvimDapVirtualText = {link = 'Comment'},
    NvimDapVirtualTextChanged = {link = 'DiagnosticVirtualTextWarn'},
    NvimDapVirtualTextError = {link = 'DiagnosticVirtualTextError'},
    NvimDapVirtualTextInfo = {link = 'DiagnosticVirtualTextInfo'},

    -- Fidget
    FidgetTitle = {link = 'Title'},
    FidgetTask = {link = 'NonText'},

    -- DiffView
    DiffviewFilePanelTitle = {fg = '#ffff60', bold = true},
    DiffviewFilePanelCounter = {fg = '#40ffff', bold = true},
    DiffviewDim1 = {fg = '#80a0ff'},
    DiffviewPrimary = {fg = '#40ffff'},
    DiffviewSecondary = {fg = '#ffa0a0'},
    diffRemoved = {},
    diffChanged = {},
    DiffviewNormal = {link = 'Normal'},
    DiffviewNonText = {link = 'NonText'},
    DiffviewCursorLine = {link = 'CursorLine'},
    DiffviewWinSeparator = {link = 'WinSeparator'},
    DiffviewSignColumn = {link = 'Normal'},
    DiffviewStatusLine = {link = 'StatusLine'},
    DiffviewStatusLineNC = {link = 'StatusLineNC'},
    DiffviewEndOfBuffer = {link = 'EndOfBuffer'},
    DiffviewFilePanelRootPath = {link = 'DiffviewFilePanelTitle'},
    DiffviewFilePanelFileName = {fg = 'White'},
    DiffviewFilePanelPath = {link = 'Comment'},
    DiffviewFilePanelInsertions = {link = 'diffAdded'},
    DiffviewFilePanelDeletions = {link = 'diffRemoved'},
    DiffviewFilePanelConflicts = {link = 'DiagnosticSignWarn'},
    DiffviewFolderName = {link = 'Directory'},
    DiffviewFolderSign = {link = 'PreProc'},
    DiffviewStatusAdded = {link = 'diffAdded'},
    DiffviewStatusUntracked = {link = 'diffAdded'},
    DiffviewStatusModified = {link = 'diffChanged'},
    DiffviewStatusRenamed = {link = 'diffChanged'},
    DiffviewStatusCopied = {link = 'diffChanged'},
    DiffviewStatusTypeChange = {link = 'diffChanged'},
    DiffviewStatusUnmerged = {link = 'diffChanged'},
    DiffviewStatusUnknown = {link = 'diffRemoved'},
    DiffviewStatusDeleted = {link = 'diffRemoved'},
    DiffviewStatusBroken = {link = 'diffRemoved'},
    DiffviewStatusIgnored = {link = 'Comment'},
    DiffviewDiffAddAsDelete = {fg = '#0000ff', bg = '#008b8b', bold = true},
    DiffviewDiffDelete = {link = 'Comment'},

    -- Bqf
    -- hl(0, "BqfPreviewBorder", {fg = c.fg, bg = "NONE"})
    -- hl(0, "BqfPreviewRange", {fg = "NONE", bg = c.ui2_blue})

    -- Nvim-Cmp
    -- hl(0, "CmpItemAbbrDefault", {fg = c.gray, bg = "NONE", strikethrough = true}) -- Highlight group for unmatched characters of each completion field.
    -- hl(0, "CmpItemAbbr", {link = 'CmpItemAbbrDefault'})
    -- hl(0, "CmpItemAbbrDeprecatedDefault", {fg = '#80a0ff'}) -- Highlight group for unmatched characters of each deprecated completion field.
    -- hl(0, "CmpItemAbbrDeprecated", {link = 'CmpItemAbbrDeprecatedDefault'})

    -- hl(0, "CmpItemAbbrMatchDefault", {fg = c.ui3_blue, bg = "NONE"}) -- Highlight group for matched characters of each completion field. Matched characters must form a substring of a field which share a starting position.
    -- hl(0, "CmpItemAbbrMatch", {link = 'CmpItemAbbrMatchDefault'})
    -- hl(0, "CmpItemAbbrMatchFuzzyDefault", {fg = c.ui3_blue, bg = "NONE"}) -- Highlight group for fuzzy-matched characters of each completion field.
    -- hl(0, "CmpItemAbbrMatchFuzzy", {link = 'CmpItemAbbrMatchFuzzyDefault'})
    -- hl(0, "CmpItemKindDefault", {fg = c.fg, bg = "NONE"})
    -- hl(0, "CmpItemKind", {link = 'CmpItemKindDefault'})
    -- hl(0, "CmpItemKindTextDefault", {link = 'CmpItemKind'})
    -- hl(0, "CmpItemKindText", {link = 'CmpItemKindTextDefault'})
    -- hl(0, "CmpItemKindFunctionDefault", {fg = c.blue, bg = "NONE"})
    -- hl(0, "CmpItemKindFunction", {link = 'CmpItemKindFunctionDefault'})
    -- hl(0, "CmpItemKindMethodDefault", {link = 'CmpItemKindFunctionDefault'})
    -- hl(0, "CmpItemKindMethod", {link = 'CmpItemKindMethodDefault'})
    -- hl(0, "CmpItemKindConstructorDefault", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "CmpItemKindConstructor", {link = 'CmpItemKindConstructorDefault'})
    -- hl(0, "CmpItemKindFieldDefault", {fg = c.red, bg = "NONE"})
    -- hl(0, "CmpItemKindField", {link = 'CmpItemKindFieldDefault'})
    -- hl(0, "CmpItemKindVariableDefault", {fg = c.red, bg = "NONE"})
    -- hl(0, "CmpItemKindVariable", {link = 'CmpItemKindVariableDefault'})
    -- hl(0, "CmpItemKindColorDefault", {link = 'CmpItemKind'})
    -- hl(0, "CmpItemKindColor", {link = 'CmpItemKindColorDefault'})
    -- hl(0, "CmpItemKindFileDefault", {link = 'CmpItemKind'})
    -- hl(0, "CmpItemKindFile", {link = 'CmpItemKindFileDefault'})
    -- hl(0, "CmpItemKindReferenceDefault", {link = 'CmpItemKind'})
    -- hl(0, "CmpItemKindReference", {link = 'CmpItemKindReferenceDefault'})
    -- hl(0, "CmpItemKindPropertyDefault", {fg = c.red, bg = "NONE"})
    -- hl(0, "CmpItemKindProperty", {link = 'CmpItemKindPropertyDefault'})
    -- hl(0, "CmpItemKindUnitDefault", {link = 'CmpItemKind'})
    -- hl(0, "CmpItemKindUnit", {link = 'CmpItemKindUnitDefault'})
    -- hl(0, "CmpItemKindConstantDefault", {fg = c.orange, bg = "NONE"})
    -- hl(0, "CmpItemKindConstant", {link = 'CmpItemKindConstantDefault'})
    -- hl(0, "CmpItemKindEnumDefault", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "CmpItemKindEnum", {link = 'CmpItemKindEnumDefault'})
    -- hl(0, "CmpItemKindEnumMemberDefault", {fg = c.orange, bg = "NONE"})
    -- hl(0, "CmpItemKindEnumMember", {link = 'CmpItemKindEnumMemberDefault'})
    -- hl(0, "CmpItemKindKeywordDefault", {fg = c.purple, bg = "NONE"})
    -- hl(0, "CmpItemKindKeyword", {link = 'CmpItemKindKeywordDefault'})
    -- hl(0, "CmpItemKindSnippetDefault", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "CmpItemKindSnippet", {link = 'CmpItemKindSnippetDefault'})
    -- hl(0, "CmpItemKindTypeParameterDefault", {fg = c.red, bg = "NONE"})
    -- hl(0, "CmpItemKindTypeParameter", {link = 'CmpItemKindTypeParameterDefault'})
    -- hl(0, "CmpItemKindModuleDefault", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "CmpItemKindModule", {link = 'CmpItemKindModuleDefault'})
    -- hl(0, "CmpItemKindOperatorDefault", {link = 'CmpItemKind'})
    -- hl(0, "CmpItemKindOperator", {link = 'CmpItemKindOperatorDefault'})
    -- hl(0, "CmpItemKindEventDefault", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "CmpItemKindEvent", {link = 'CmpItemKindEventDefault'})
    -- hl(0, "CmpItemKindStructDefault", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "CmpItemKindStruct", {link = 'CmpItemKindStructDefault'})
    -- hl(0, "CmpItemKindFolderDefault", {link = 'CmpItemKind'})
    -- hl(0, "CmpItemKindFolder", {link = 'CmpItemKindFolderDefault'})
    -- hl(0, "CmpItemKindClassDefault", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "CmpItemKindClass", {link = 'CmpItemKindClassDefault'})
    -- hl(0, "CmpItemKindValueDefault", {link = 'CmpItemKind'})
    -- hl(0, "CmpItemKindValue", {link = 'CmpItemKindValueDefault'})
    -- hl(0, "CmpItemKindInterfaceDefault", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "CmpItemKindInterface", {link = 'CmpItemKindInterfaceDefault'})
    -- hl(0, "CmpItemMenuDefault", {link = 'CmpItemKind'})
    -- hl(0, "CmpItemMenu", {link = 'CmpItemMenuDefault'})
    -- hl(0, "CmpItemKindEmoji", {link = 'CmpItemKind'})

    -- Navic
    -- hl(0, "NavicIconsFile", {fg = c.fg, bg = "NONE"})
    -- hl(0, "NavicIconsModule", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsNamespace", {fg = c.fg, bg = "NONE"})
    -- hl(0, "NavicIconsPackage", {fg = c.fg, bg = "NONE"})
    -- hl(0, "NavicIconsClass", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsMethod", {fg = c.blue, bg = "NONE"})
    -- hl(0, "NavicIconsProperty", {fg = c.red, bg = "NONE"})
    -- hl(0, "NavicIconsField", {fg = c.red, bg = "NONE"})
    -- hl(0, "NavicIconsConstructor", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsEnum", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsInterface", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsFunction", {fg = c.blue, bg = "NONE"})
    -- hl(0, "NavicIconsVariable", {fg = c.red, bg = "NONE"})
    -- hl(0, "NavicIconsConstant", {fg = c.orange, bg = "NONE"})
    -- hl(0, "NavicIconsString", {fg = c.green, bg = "NONE"})
    -- hl(0, "NavicIconsNumber", {fg = c.orange, bg = "NONE"})
    -- hl(0, "NavicIconsBoolean", {fg = c.orange, bg = "NONE"})
    -- hl(0, "NavicIconsArray", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsObject", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsKey", {fg = c.purple, bg = "NONE"})
    -- hl(0, "NavicIconsKeyword", {fg = c.purple, bg = "NONE"})
    -- hl(0, "NavicIconsNull", {fg = c.orange, bg = "NONE"})
    -- hl(0, "NavicIconsEnumMember", {fg = c.orange, bg = "NONE"})
    -- hl(0, "NavicIconsStruct", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "NavicIconsEvent", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "NavicIconsOperator", {fg = c.fg, bg = "NONE"})
    -- hl(0, "NavicIconsTypeParameter", {fg = c.red, bg = "NONE"})
    -- hl(0, "NavicText", {fg = c.context, bg = "NONE"})
    -- hl(0, "NavicSeparator", {fg = c.context, bg = "NONE"})

    -- Gps
    -- hl(0, "GpsNormal", {fg = c.gray, bg = "#1d1d1d"})
    -- hl(0, "GpsItemKindFunction", {fg = c.ui_purple, bg = "NONE"})
    -- hl(0, "GpsItemKindMethod", {fg = c.ui_purple, bg = "NONE"})
    -- hl(0, "GpsItemKindConstructor", {fg = c.ui_orange, bg = "NONE"})
    -- hl(0, "GpsItemKindClass", {fg = c.ui_orange, bg = "NONE"})
    -- hl(0, "GpsItemKindEnum", {fg = c.ui_orange, bg = "NONE"})
    -- hl(0, "GpsItemKindEvent", {fg = c.ui_purple, bg = "NONE"})
    -- hl(0, "GpsItemKindInterface", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindStruct", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "GpsItemKindVariable", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "GpsItemKindField", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "GpsItemKindProperty", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "GpsItemKindEnumMember", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindConstant", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "GpsItemKindKeyword", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindModule", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindValue", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindUnit", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindText", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindSnippet", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindFile", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindFolder", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindColor", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindReference", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindOperator", {fg = c.fg, bg = "NONE"})
    -- hl(0, "GpsItemKindTypeParameter", {fg = c.fg, bg = "NONE"})

    -- Rainbow
    -- hl(0, "rainbowcol1", {fg = '#cc241d'})
    -- hl(0, "rainbowcol2", {fg = '#a89984'})
    -- hl(0, "rainbowcol3", {fg = '#b16286'})
    -- hl(0, "rainbowcol4", {fg = '#d79921'})
    -- hl(0, "rainbowcol5", {fg = '#689d6a'})
    -- hl(0, "rainbowcol6", {fg = '#d65d0e'})
    -- hl(0, "rainbowcol7", {fg = '#458588'})

    -- Packer
    -- hl(0, "packerString", {fg = c.ui_orange, bg = "NONE"})
    -- hl(0, "packerHash", {fg = c.ui4_blue, bg = "NONE"})
    -- hl(0, "packerOutput", {fg = c.ui_purple, bg = "NONE"})
    -- hl(0, "packerRelDate", {fg = c.gray, bg = "NONE"})
    -- hl(0, "packerSuccess", {fg = c.success_green, bg = "NONE"})
    -- hl(0, "packerStatusSuccess", {fg = c.ui4_blue, bg = "NONE"})

    -- SymbolOutline
    FocusedSymbol = {fg = '#ffa0a0', bg = '#666666'},
    SymbolsOutlineConnector = {fg = '#80a0ff'},

    -- Notify
    NotifyERRORBorder = {fg = '#8a1f1f'},
    NotifyWARNBorder = {fg = '#79491d'},
    NotifyINFOBorder = {fg = '#4f6752'},
    NotifyDEBUGBorder = {fg = '#8b8b8b'},
    NotifyTRACEBorder = {fg = '#4f3552'},
    NotifyERRORIcon = {fg = '#f70067'},
    NotifyWARNIcon = {fg = '#f79000'},
    NotifyINFOIcon = {fg = '#a9ff68'},
    NotifyDEBUGIcon = {fg = '#8b8b8b'},
    NotifyTRACEIcon = {fg = '#d484ff'},
    NotifyERRORTitle = {fg = '#f70067'},
    NotifyWARNTitle = {fg = '#f79000'},
    NotifyINFOTitle = {fg = '#a9ff68'},
    NotifyDEBUGTitle = {fg = '#8b8b8b'},
    NotifyTRACETitle = {fg = '#d484ff'},
    NotifyERRORBody = {link = 'Normal'},
    NotifyWARNBody = {link = 'Normal'},
    NotifyINFOBody = {link = 'Normal'},
    NotifyDEBUGBody = {link = 'Normal'},
    NotifyTRACEBody = {link = 'Normal'},
    NotifyLogTime = {link = 'Comment'},
    NotifyLogTitle = {link = 'Special'},

    -- Renamer
    -- hl(0, "RenamerNormal", {link = 'Normal'})
    -- hl(0, "RenamerBorder", {link = 'RenamerNormal'})
    -- hl(0, "RenamerTitle", {link = 'Identifier'})

    -- Hop
    -- hl(0, "HopNextKey", {fg = "#4ae0ff", bg = "NONE"})
    -- hl(0, "HopNextKey1", {fg = "#d44eed", bg = "NONE"})
    -- hl(0, "HopNextKey2", {fg = "#b42ecd", bg = "NONE"})
    -- hl(0, "HopUnmatched", {fg = c.gray, bg = "NONE"})
    -- hl(0, "HopPreview", {fg = "#c7ba7d", bg = "NONE"})

    -- TODO Comments
    TodoBgFIX = {fg = '#ffffff', bg = '#f44747', bold = true},
    TodoFgFIX = {fg = '#f44747'},
    TodoSignFIX = {fg = '#f44747', bg = '#808080'},
    TodoBgTODO = {fg = '#000000', bg = '#4fc1ff', bold = true},
    TodoFgTODO = {fg = '#4fc1ff'},
    TodoSignTODO = {fg = '#4fc1ff', bg = '#808080'},
    TodoBgTEST = {fg = '#000000', bg = '#40ffff', bold = true},
    TodoFgTEST = {fg = '#40ffff'},
    TodoSignTEST = {fg = '#40ffff', bg = '#808080'},
    TodoBgHACK = {fg = '#000000', bg = '#ff8800', bold = true},
    TodoFgHACK = {fg = '#ff8800'},
    TodoSignHACK = {fg = '#ff8800', bg = '#808080'},
    TodoBgWARN = {fg = '#000000', bg = '#ff8800', bold = true},
    TodoFgWARN = {fg = '#ff8800'},
    TodoSignWARN = {fg = '#ff8800', bg = '#808080'},
    TodoBgNOTE = {fg = '#000000', bg = '#10b981', bold = true},
    TodoFgNOTE = {fg = '#10b981'},
    TodoSignNOTE = {fg = '#10b981', bg = '#808080'},
    TodoBgPERF = {fg = '#ffffff', bg = '#7c3aed', bold = true},
    TodoFgPERF = {fg = '#7c3aed'},
    TodoSignPERF = {fg = '#7c3aed', bg = '#808080'},

    -- DAP UI
    -- hl(0, "DapUIVariable", {link = 'Normal'})
    -- hl(0, "DapUIScope", {fg = '#00f1f5', bold = true})
    -- hl(0, "DapUIType", {fg = '#d484ff'})
    -- hl(0, "DapUIValue", {link = 'Normal'})
    -- hl(0, "DapUIModifiedValue", {link = 'DapUIScope'})
    -- hl(0, "DapUIDecoration", {link = 'DapUIScope'})
    -- hl(0, "DapUIThread", {fg = '#a9ff68', bold = true})
    -- hl(0, "DapUIStoppedThread", {link = 'DapUIScope'})
    -- hl(0, "DapUIFrameName", {link = 'Normal'})
    -- hl(0, "DapUISource", {fg = '#d484ff'})
    -- hl(0, "DapUILineNumber", {link = 'DapUIScope'})
    -- hl(0, "DapUIFloatBorder", {link = 'DapUIScope'})
    -- hl(0, "DapUIWatchesEmpty", {fg = '#f70067'})
    -- hl(0, "DapUIWatchesValue", {link = 'DapUIThread'})
    -- hl(0, "DapUIWatchesError", {link = 'DapUIWatchesEmpty'})
    -- hl(0, "DapUIBreakpointsPath", {link = 'DapUIScope'})
    -- hl(0, "DapUIBreakpointsInfo", {link = 'DapUIThread'})
    -- hl(0, "DapUIBreakpointsCurrentLine", {link = 'DapUIThread'})
    -- hl(0, "DapUIBreakpointsLine", {link = 'DapUILineNumber'})
    -- hl(0, "DapUIBreakpointsDisabledLine", {fg = '#424242'})
    -- hl(0, "DapUICurrentFrameName", {link = 'DapUIBreakpointsCurrentLine'})

    -- Vim-Matchup
    MatchBackground = {link = 'ColorColumn'},

    -- Nvim Surround
    NvimSurroundHighlight = {link = 'Visual'}

    -- Misc
    -- hl(0, "diffAdded", {fg = c.sign_add, bg = "NONE"})
    -- hl(0, "diffRemoved", {fg = c.sign_delete, bg = "NONE"})
    -- hl(0, "diffFileId", {fg = c.blue, bg = "NONE", bold = true, reverse = true})
    -- hl(0, "diffFile", {fg = c.alt_bg, bg = "NONE"})
    -- hl(0, "diffNewFile", {fg = c.green, bg = "NONE"})
    -- hl(0, "diffOldFile", {fg = c.red, bg = "NONE"})
    -- hl(0, "debugPc", {fg = "NONE", bg = c.ui5_blue})
    -- hl(0, "debugBreakpoint", {fg = c.red, bg = "NONE", reverse = true})
    -- hl(0, "CodiVirtualText", {fg = c.hint, bg = "NONE"})
    -- hl(0, "SniprunVirtualTextOk", {fg = c.hint, bg = "NONE"})
    -- hl(0, "SniprunFloatingWinOk", {fg = c.hint, bg = "NONE"})
    -- hl(0, "SniprunVirtualTextErr", {fg = c.error, bg = "NONE"})
    -- hl(0, "SniprunFloatingWinErr", {fg = c.error, bg = "NONE"})
    -- hl(0, "DapBreakpoint", {fg = c.error, bg = "NONE"})

    -- Language
    -- hl(0, "xmlTag", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "xmlTagName", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "xmlEndTag", {fg = c.cyan, bg = "NONE"})
    -- hl(0, "yamlPlainScalar", {fg = c.orange, bg = "NONE"})
    -- hl(0, "yamlTSField", {fg = c.blue, bg = "NONE"})
    -- hl(0, "luaFunc", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "luaFunction", {fg = c.blue, bg = "NONE"})
    -- hl(0, "hclTSPunctSpecial", {fg = c.alt_fg, bg = "NONE"})
    -- hl(0, "htmlH1", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlH2", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlH3", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlH4", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlH5", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlH6", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlHead", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlTitle", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlArg", {fg = c.fg, bg = "NONE"})
    -- hl(0, "htmlTag", {fg = c.blue, bg = "NONE"})
    -- hl(0, "htmlTagN", {fg = c.blue, bg = "NONE"})
    -- hl(0, "htmlTagName", {fg = c.blue, bg = "NONE"})
    -- hl(0, "htmlComment", {fg = c.green, bg = "NONE"})
    -- hl(0, "htmlLink", {fg = c.orange, bg = "NONE", underline = true})
    -- hl(0, "cssBraces", {fg = c.fg, bg = "NONE"})
    -- hl(0, "cssInclude", {fg = c.purple, bg = "NONE"})
    -- hl(0, "cssTagName", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssClassName", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssPseudoClass", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssPseudoClassId", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssPseudoClassLang", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssIdentifier", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssProp", {fg = c.fg, bg = "NONE"})
    -- hl(0, "cssDefinition", {fg = c.fg, bg = "NONE"})
    -- hl(0, "cssAttr", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssAttrRegion", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssColor", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssFunction", {fg = c.purple, bg = "NONE"})
    -- hl(0, "cssFunctionName", {fg = c.yellow, bg = "NONE"})
    -- hl(0, "cssVendor", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssValueNumber", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssValueLength", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssUnitDecorators", {fg = c.orange, bg = "NONE"})
    -- hl(0, "cssStyle", {fg = c.fg, bg = "NONE"})
    -- hl(0, "cssImportant", {fg = c.blue, bg = "NONE"})
    -- hl(0, "jsonKeyword", {fg = c.blue, bg = "NONE"})
    -- hl(0, "yamlBlockMappingKey", {fg = c.blue, bg = "NONE"})
    -- hl(0, "tomlTSProperty", {fg = c.blue, bg = "NONE"})
}

theme.loadTerminal = function()
    vim.g.terminal_color_0 = c.black
    vim.g.terminal_color_1 = c.red
    vim.g.terminal_color_2 = c.green
    vim.g.terminal_color_3 = c.yellow
    vim.g.terminal_color_4 = c.blue
    vim.g.terminal_color_5 = c.purple
    vim.g.terminal_color_6 = c.cyan
    vim.g.terminal_color_7 = c.white
    vim.g.terminal_color_8 = c.gray
    vim.g.terminal_color_9 = c.red
    vim.g.terminal_color_10 = c.green
    vim.g.terminal_color_11 = c.yellow
    vim.g.terminal_color_12 = c.blue
    vim.g.terminal_color_13 = c.purple
    vim.g.terminal_color_14 = c.cyan
    vim.g.terminal_color_15 = c.white
end

return theme
