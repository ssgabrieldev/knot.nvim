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
        StatusLineNC { StatusLine, fg = Normal.bg.da(2) },
        WinSeparator { Normal, fg = M.colors.black.li(4) },
        WinBar { bg = Normal.bg },
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

        -- Dap View
        TabLine { WinBar },
        NvimDapViewTabSelected { bg = WinSeparator.fg, gui = "bold" },

        -- Buffer Line
        BufferLineFill { bg = WinBar.bg },
        BufferLineBackground { bg = WinBar.bg },
        BufferLineSeparator { bg = WinBar.bg, fg = Normal.bg },
        BufferLineOffsetSeparator { WinSeparator },
        BufferLineHint { bg = WinBar.bg },
        BufferLineError { bg = WinBar.bg },
        BufferLineWarning { bg = WinBar.bg },
        BufferLineInfo { bg = WinBar.bg },
        BufferLineModified { bg = WinBar.bg },
        BufferLinePick { bg = WinBar.bg, fg = Keyword.fg },
        BufferLineHintSelected { bg = WinSeparator.fg },
        BufferLineErrorSelected { bg = WinSeparator.fg },
        BufferLineWarningSelected { bg = WinSeparator.fg },
        BufferLineInfoSelected { bg = WinSeparator.fg },
        BufferLineModifiedSelected { bg = WinSeparator.fg },
        BufferLineBufferSelected { bg = WinSeparator.fg },
        BufferLineCloseButtonSelected { bg = WinSeparator.fg },
        BufferLineDevIconDefaultSelected { bg = WinSeparator.fg },
        BufferLinePickSelected { bg = WinSeparator.fg, fg = Keyword.fg },


        -- MarkView
        MarkViewCode { bg = M.colors.black.li(2) },
        MarkviewHeading1 { bg = M.colors.black, fg = Keyword.fg },
        MarkviewHeading2 { bg = M.colors.black, fg = Keyword.fg },
        MarkviewHeading3 { bg = M.colors.black, fg = Keyword.fg },
        MarkviewHeading4 { bg = M.colors.black, fg = Keyword.fg },
        MarkviewHeading5 { bg = M.colors.black, fg = Keyword.fg },

        -- ToggleTerm
        -- WinBarActive { bg = WinSeparator.fg }
    }
end)

return M
