local lush = require('lush')
local hsl = lush.hsl

local M = {}

M.colors = {
  black_01 = hsl("#000000"),
  black_02 = hsl("#050505"),
  black_03 = hsl("#0A0A0A"),
  gray_01 = hsl("#878787"),
  gray_02 = hsl("#5C5C5C"),
  gray_03 = hsl("#333232"),
  red_01 = hsl("#3d060c"),
  red_02 = hsl("#780d19"),
  red_03 = hsl("#b81427"),
  yellow_01 = hsl("#574703"),
  yellow_02 = hsl("#756006"),
  yellow_03 = hsl("#BC9909"),
  blue_01 = hsl("#082536"),
  blue_02 = hsl("#0f4463"),
  blue_03 = hsl("#17699A"),
  green_01 = hsl("#06360e"),
  green_02 = hsl("#0c6e1c"),
  green_03 = hsl("#149C2B"),
}

M.theme = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    ------------
    -- NeoVim --
    ------------

    -- Base
    Normal { fg = M.colors.gray_02, bg = M.colors.black_01 },
    Comment { fg = M.colors.gray_03 },
    Delimiter { fg = M.colors.gray_01 },
    Keyword { fg = M.colors.red_03 },
    StatusLine { fg = M.colors.gray_01, bg = M.colors.black_03 },
    DiagnosticInfo { fg = M.colors.blue_03 },
    DiagnosticWarn { fg = M.colors.yellow_03 },
    DiagnosticError { fg = M.colors.red_03 },
    DiagnosticHint { fg = M.colors.blue_03 },
    Added { fg = M.colors.green_03, bg = M.colors.green_01 },
    Removed { fg = M.colors.red_03, bg = M.colors.red_01 },
    Changed { fg = M.colors.blue_03, bg = M.colors.blue_01 },
    Search { fg = M.colors.yellow_03, bg = M.colors.yellow_01 },

    -- Window Decoration
    StatusLineNC { StatusLine, fg = M.colors.gray_03 },
    WinSeparator { Normal, fg = StatusLine.bg },
    WinBar { StatusLine },
    WinBarNC { WinBar },
    FloatBorder { WinSeparator },

    -- Window Content
    Visual { fg = Normal.fg, bg = M.colors.gray_01 },
    CursorLine { bg = M.colors.black_02 },
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
    sym("@variable.parameter") { Keyword },
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
  }
end)

return M
