local lush = require('lush')
local hsl = lush.hsl

local M = {
    colors = {}
}

M.colors.black = hsl("#000000")
M.colors.gray_01 = hsl("#626262")
M.colors.gray_02 = M.colors.gray_01.li(4)
M.colors.gray_03 = M.colors.gray_01.li(8)
M.colors.gray_04 = M.colors.gray_01.li(16)
M.colors.red_01 = hsl("#3d060c")
M.colors.red_02 = M.colors.red_01.li(4)
M.colors.red_03 = M.colors.red_01.li(8)
M.colors.red_04 = M.colors.red_01.li(16)
M.colors.yellow_01 = hsl("#574703")
M.colors.yellow_02 = M.colors.yellow_01.li(4)
M.colors.yellow_03 = M.colors.yellow_01.li(8)
M.colors.yellow_04 = M.colors.yellow_01.li(16)
M.colors.blue_01 = hsl("#082536")
M.colors.blue_02 = M.colors.blue_01.li(4)
M.colors.blue_03 = M.colors.blue_01.li(8)
M.colors.blue_04 = M.colors.blue_01.li(16)
M.colors.green_01 = hsl("#06360e")
M.colors.green_02 = M.colors.green_01.li(4)
M.colors.green_03 = M.colors.green_01.li(8)
M.colors.green_04 = M.colors.green_01.li(16)

M.theme = lush(function(injected_functions)
    local sym = injected_functions.sym

    return {
        ------------
        -- NeoVim --
        ------------

        -- Base
        Normal { fg = M.colors.gray_04, bg = M.colors.black },
        Comment { fg = M.colors.gray_02 },
        Delimiter { fg = M.colors.gray_03 },
        Keyword { fg = M.colors.red_04 },
        StatusLine { fg = M.colors.gray_04, bg = M.colors.black.li(8) },
        DiagnosticInfo { fg = M.colors.blue_04 },
        DiagnosticWarn { fg = M.colors.yellow_04 },
        DiagnosticError { fg = M.colors.red_04 },
        DiagnosticHint { fg = M.colors.blue_04 },
        Added { fg = M.colors.green_04, bg = M.colors.green_01 },
        Removed { fg = M.colors.red_04, bg = M.colors.red_01 },
        Changed { fg = M.colors.blue_04, bg = M.colors.blue_01 },
        Search { fg = M.colors.yellow_04, bg = M.colors.yellow_01 },

        -- Window Decoration
        StatusLineNC { StatusLine, fg = M.colors.gray_01 },
        WinSeparator { Normal, fg = StatusLine.bg },
        WinBar { fg = StatusLine.fg, bg = M.colors.black },
        WinBarNC { WinBar },
        FloatBorder { WinSeparator, fg = M.colors.gray_01 },

        -- Window Content
        Visual { bg = M.colors.black.li(10) },
        CursorLine { bg = Normal.bg },
        CursorLineNr { fg = M.colors.red_03 },
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
        DiagnosticVirtualTextInfo { DiagnosticInfo, bg = M.colors.blue_01 },
        DiagnosticVirtualTextWarn { DiagnosticWarn, bg = M.colors.yellow_01 },
        DiagnosticVirtualTextError { DiagnosticError, bg = M.colors.red_01 },
        DiagnosticVirtualTextHint { DiagnosticHint, bg = M.colors.blue_01 },
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

        -------------
        -- Plugins --
        -------------

        -- Telescope
        TelescopeNormal { NormalFloat },
        TelescopeBorder { FloatBorder },

        -- CMP
        PmenuSel { bg = M.colors.black.li(4), gui = "NONE" },

        -- NvimTree
        NvimTreeNormal { bg = M.colors.black.li(2) },
        NvimTreeEndOfBuffer { bg = NvimTreeNormal.bg, fg = NvimTreeNormal.bg },
        NvimTreeCursorLine { bg = NvimTreeNormal.bg },

        -- Dap View
        TabLine { NvimTreeNormal },
        NvimDapViewTabSelected { bg = NvimTreeNormal.bg, gui = "bold" },

        -- Buffer Line
        BufferLineFill { bg = NvimTreeNormal.bg },
        BufferLineBackground { bg = NvimTreeNormal.bg },
        BufferLineSeparator { bg = NvimTreeNormal.bg, fg = Normal.bg },
        BufferLineOffsetSeparator { bg = Normal.bg, fg = StatusLine.bg },
        BufferLineHint { bg = NvimTreeNormal.bg },
        BufferLineError { bg = NvimTreeNormal.bg },
        BufferLineWarning { bg = NvimTreeNormal.bg },
        BufferLineInfo { bg = NvimTreeNormal.bg },
        BufferLineModified { bg = NvimTreeNormal.bg },
    }
end)

return M
