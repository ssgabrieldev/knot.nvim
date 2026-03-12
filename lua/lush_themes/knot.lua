local lush = require('lush')
local hsl = lush.hsl

local M = {
    colors = {}
}

-- Definição das cores base
M.colors.black = hsl("#000000")
M.colors.gray = hsl("#828282")
M.colors.red = hsl("#3d060c")
M.colors.yellow = hsl("#574703")
M.colors.blue = hsl("#082536")
M.colors.green = hsl("#06360e")

M.theme = lush(function(injected_functions)
    local sym = injected_functions.sym

    return {
        ------------
        -- NeoVim --
        ------------

        -- Base
        Normal { fg = M.colors.gray.li(16), bg = M.colors.black },
        Comment { fg = M.colors.gray.li(4) },
        Delimiter { fg = M.colors.gray.li(8) },
        Keyword { fg = M.colors.red.li(32) },
        StatusLine { Normal },
        DiagnosticInfo { fg = M.colors.blue.li(32) },
        DiagnosticWarn { fg = M.colors.yellow.li(32) },
        DiagnosticError { fg = M.colors.red.li(32) },
        DiagnosticHint { fg = M.colors.blue.li(32) },
        Added { fg = M.colors.green.li(32), bg = M.colors.green },
        Removed { fg = M.colors.red.li(32), bg = M.colors.red },
        Changed { fg = M.colors.blue.li(32), bg = M.colors.blue },
        Search { fg = M.colors.yellow.li(32), bg = M.colors.yellow },

        -- Window Decoration
        StatusLineNC { StatusLine, fg = Normal.fg.da(50) },
        WinSeparator { Normal, fg = M.colors.black.li(8) },
        WinBar { bg = Normal.bg.li(8) },
        WinBarNC { WinBar },
        FloatBorder { WinSeparator, fg = M.colors.gray },

        -- Window Content
        Visual { bg = M.colors.black.li(10) },
        CursorLine { bg = Normal.bg },
        CursorLineNr { fg = Keyword.fg },
        EndOfBuffer { Normal, fg = Normal.bg },
        Directory { Normal },
        NormalFloat { Normal },
        String { Keyword },
        Function { Keyword },
        Statement { Keyword },
        Special { Delimiter },
        Type { Keyword },
        Identifier { Delimiter },
        Number { Delimiter },
        Boolean { Delimiter },
        DiffAdd { Added },
        DiffDelete { Removed },
        DiffChange { Changed },
        GitSignsAdd { Added, bg = "" },
        GitSignsDelete { Removed, bg = "" },
        GitSignsChange { Changed, bg = "" },
        DiagnosticSignInfo { DiagnosticInfo, gui = "NONE" },
        DiagnosticSignWarn { DiagnosticWarn, gui = "NONE" },
        DiagnosticSignError { DiagnosticError, gui = "NONE" },
        DiagnosticSignHint { DiagnosticHint, gui = "NONE" },
        DiagnosticVirtualTextInfo { DiagnosticInfo, bg = M.colors.blue },
        DiagnosticVirtualTextWarn { DiagnosticWarn, bg = M.colors.yellow },
        DiagnosticVirtualTextError { DiagnosticError, bg = M.colors.red },
        DiagnosticVirtualTextHint { DiagnosticHint, bg = M.colors.blue },
        DiagnosticUnderlineInfo { sp = DiagnosticInfo.fg, gui = "undercurl" },
        DiagnosticUnderlineWarn { sp = DiagnosticWarn.fg, gui = "undercurl" },
        DiagnosticUnderlineError { sp = DiagnosticError.fg, gui = "undercurl" },
        DiagnosticUnderlineHint { sp = DiagnosticHint.fg, gui = "undercurl" },
        ErrorMsg { DiagnosticError },
        WarningMsg { DiagnosticWarn },
        htmlTagName { Delimiter },
        typescriptParens { Delimiter },
        sym("@keyword") { Keyword },
        sym("@string") { Keyword },
        sym("@variable.parameter") { Delimiter },
        sym("@function") { Keyword },
        sym("@function.method") { Keyword },
        sym("@function.builtin") { Keyword },
        sym("@method") { Keyword },
        sym("@variable") { fg = Normal.fg },
        sym("@number") { Delimiter },
        sym("@boolean") { Delimiter },
        sym("@lsp.type.property") { fg = Normal.fg },
        sym("@markup.raw.block.markdown") { gui = "bold" },

        -------------
        -- Plugins --
        -------------

        -- Telescope
        TelescopeNormal { NormalFloat },
        TelescopeBorder { FloatBorder },

        -- CMP
        PmenuSel { bg = M.colors.black.li(4), gui = "NONE" },

        -- NvimTree
        NvimTreeNormal { bg = M.colors.black },
        NvimTreeEndOfBuffer { bg = NvimTreeNormal.bg, fg = NvimTreeNormal.bg },
        NvimTreeCursorLine { bg = NvimTreeNormal.bg },

        -- Buffer Line
        WinBarInactive { bg = WinBar.bg },
        WinBarActive { bg = WinBar.bg.li(4) },
        BufferLineOffsetSeparator { WinSeparator },
        -- BufferLineDevIconDefault { BufferLineBackground },
        -- Buffer
        BufferLineBackground { bg = WinBarInactive.bg, fg = Normal.fg, },
        BufferLineDuplicate { BufferLineBackground },
        BufferLineFill { BufferLineBackground },
        BufferLineModified { BufferLineBackground },
        BufferLineCloseButton { BufferLineBackground },
        BufferLinePick { bg = BufferLineBackground.bg, fg = Keyword.fg },
        BufferLineHint { DiagnosticHint, bg = BufferLineBackground.bg },
        BufferLineError { DiagnosticError, bg = BufferLineBackground.bg },
        BufferLineWarning { DiagnosticWarn, bg = BufferLineBackground.bg },
        BufferLineInfo { DiagnosticInfo, bg = BufferLineBackground.bg },
        -- Visible
        BufferLineBufferVisible { bg = WinBarActive.bg },
        BufferLineDuplicateVisible { BufferLineBufferVisible },
        BufferLineIndicatorVisible { BufferLineBufferVisible },
        BufferLineCloseButtonVisible { BufferLineBufferVisible },
        BufferLineModifiedVisible { BufferLineBufferVisible },
        BufferLineHintVisible { DiagnosticHint, bg = BufferLineBufferVisible.bg },
        BufferLineErrorVisible { DiagnosticError, bg = BufferLineBufferVisible.bg },
        BufferLineWarningVisible { DiagnosticWarn, bg = BufferLineBufferVisible.bg },
        BufferLineInfoVisible { DiagnosticInfo, bg = BufferLineBufferVisible.bg },
        -- Selected
        BufferLineBufferSelected { bg = WinBarActive.bg, fg = Normal.fg, gui = "bold" },
        BufferLineDuplicateSelected { BufferLineBufferSelected },
        BufferLineModifiedSelected { BufferLineBufferSelected },
        BufferLineIndicatorSelected { BufferLineBufferSelected },
        BufferLineCloseButtonSelected { BufferLineBufferSelected },
        BufferLineDevIconDefaultSelected { BufferLineBufferSelected },
        BufferLineCloseButtonSelected { BufferLineBufferSelected },
        BufferLinePickSelected { bg = BufferLineBufferSelected.bg, fg = Keyword.fg },
        BufferLineHintSelected { BufferLineBufferSelected, fg = DiagnosticHint.fg },
        BufferLineErrorSelected { BufferLineBufferSelected, fg = DiagnosticError.fg },
        BufferLineWarningSelected { BufferLineBufferSelected, fg = DiagnosticWarn.fg },
        BufferLineInfoSelected { BufferLineBufferSelected, fg = DiagnosticInfo.fg },

        -- Dap View
        NvimDapViewTab { BufferLineBackground },
        NvimDapViewTabSelected { BufferLineBufferSelected },
        NvimDapViewTabFill { NvimDapViewTab },
        NvimDapViewControlNC { NvimDapViewTabFill },
        NvimDapViewControlPause { NvimDapViewControlNC, fg = Keyword.fg },
        NvimDapViewControlPlay { NvimDapViewControlPause },
        NvimDapViewControlRunLast { NvimDapViewControlPause },

        -- MarkView
        MarkViewCode { bg = M.colors.black.li(2) },
        MarkviewHeading1 { bg = M.colors.black, fg = Keyword.fg },
        MarkviewHeading2 { bg = M.colors.black, fg = Keyword.fg },
        MarkviewHeading3 { bg = M.colors.black, fg = Keyword.fg },
        MarkviewHeading4 { bg = M.colors.black, fg = Keyword.fg },
        MarkviewHeading5 { bg = M.colors.black, fg = Keyword.fg },
    }
end)

return M
