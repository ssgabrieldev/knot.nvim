local lush = require('lush')
local hsl = lush.hsl

local M = {}

M.colors = {
  black_01 = hsl("#000000"),
  black_02 = hsl("#050505"),
  black_03 = hsl("#0A0A0A"),
  gray_01 = hsl("#DBDBDB"),
  gray_02 = hsl("#B3B3B3"),
  gray_03 = hsl("#858585"),
  red_01 = hsl("#910C1A"),
  red_02 = hsl("#C20D1F"),
  red_03 = hsl("#FA0D25"),
  yellow_01 = hsl("#BC9909"),
  yellow_02 = hsl("#DEB50B"),
  yellow_03 = hsl("#FCCE0D"),
  blue_01 = hsl("#17699A"),
  blue_02 = hsl("#1B7BB5"),
  blue_03 = hsl("#2193D9"),
  green_01 = hsl("#149C2B"),
  green_02 = hsl("#1AC938"),
  green_03 = hsl("#1DF542"),
}

M.theme = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    ------------
    -- NeoVim --
    ------------

    -- TODO: Definir core de diagnostico
    -- Colors

    -- Window Decoration
    StatusLine { fg = M.colors.gray_01, bg = M.colors.black_03 },
    WinSeparator { Normal, fg = StatusLine.bg },
    WinBar { StatusLine },
    WinBarNC { WinBar },
    FloatBorder { WinSeparator },
    StatusLineNC { StatusLine },

    -- Window Content
    Normal { fg = M.colors.gray_03, bg = M.colors.black_01 },
    Visual { fg = Normal.fg, bg = M.colors.gray_01 },
    CursorLine { bg = M.colors.black_02 },
    Comment { fg = M.colors.gray_03 },
    keyword { fg = M.colors.red_01 },
    EndOfBuffer { Normal, fg = Normal.bg },
    Directory { Normal },
    NormalFloat { Normal },
    String { keyword },
    Identifier { keyword },
    Function { keyword },
    Statement { keyword },
    Delimiter { keyword },
    Special { keyword },
    sym("@keyword") { keyword },
    sym("@string") { keyword },
    sym("@variable.parameter") { keyword },
    sym("@function") { keyword },
    sym("@function.method") { keyword },
    sym("@function.builtin") { keyword },
    sym("@method") { keyword },
    sym("@variable") { fg = Normal.fg },

    -- DiffAdd { fg = M.colors.diff_add_fg, bg = M.colors.diff_add_bg },
    -- DiffDelete { fg = M.colors.diff_delete_fg, bg = M.colors.diff_delete_bg },
    -- DiffChange { fg = M.colors.diff_change_fg, bg = M.colors.diff_change_bg },
    -- Added { fg = M.colors.diff_add_fg, bg = M.colors.diff_add_bg },
    -- Removed { fg = M.colors.diff_delete_fg, bg = M.colors.diff_delete_bg },
    -- Changed { fg = M.colors.diff_change_fg, bg = M.colors.diff_change_bg },
    -- WinBarSelected { bg = M.colors.bg, fg = M.palette.white, bold = true },
    -- TabLineSel { WinBarSelected },
    -- TabLine { WinBar },
    -- Type { fg = M.colors.keyword },
    -- Number { fg = M.colors.number },
    -- Boolean { fg = M.colors.boolean },
    -- htmlTagName { fg = M.colors.fg },
    -- GitSignsAdd { DiffAdd, bg = "" },
    -- GitSignsDelete { DiffDelete, bg = "" },
    -- GitSignsChange { DiffChange, bg = "" },
    -- DiagnosticInfo { fg = M.colors.diagnostic_info_fg },
    -- DiagnosticWarn { fg = M.colors.diagnostic_warn_fg },
    -- DiagnosticError { fg = M.colors.diagnostic_error_fg },
    -- DiagnosticHint { fg = M.colors.diagnostic_info_fg },
    -- DiagnosticSignInfo { DiagnosticInfo, gui = "NONE" },
    -- DiagnosticSignWarn { DiagnosticWarn, gui = "NONE" },
    -- DiagnosticSignError { DiagnosticError, gui = "NONE" },
    -- DiagnosticSignHint { DiagnosticHint, gui = "NONE" },
    -- DiagnosticVirtualTextInfo { DiagnosticInfo, bg = M.colors.diagnostic_info_bg },
    -- DiagnosticVirtualTextWarn { DiagnosticWarn, bg = M.colors.diagnostic_warn_bg },
    -- DiagnosticVirtualTextError { DiagnosticError, bg = M.colors.diagnostic_error_bg },
    -- DiagnosticVirtualTextHint { DiagnosticHint, bg = M.colors.diagnostic_info_bg },
    -- DiagnosticUnderlineInfo { gui = "undercurl", sp = M.colors.diagnostic_info_fg },
    -- DiagnosticUnderlineWarn { gui = "undercurl", sp = M.colors.diagnostic_warn_fg },
    -- DiagnosticUnderlineError { gui = "undercurl", sp = M.colors.diagnostic_error_fg },
    -- DiagnosticUnderlineHint { gui = "undercurl", sp = M.colors.diagnostic_hint_fg },
    -- ErrorMsg { DiagnosticError },
    -- WarningMsg { DiagnosticWarn },
    -- debugPC { bg = M.colors.dap_stopped_line_bg },
    -- SignColumn { fg = M.colors.dap_stopped_icon_fg },
    -- DapNormal { NormalFloat },
    -- DapEndOfBuffer { NormalFloat, fg = NormalFloat.bg },
    -- NvimDapViewTab { NormalFloat },
    -- NvimTreeNormal { bg = M.colors.bg },
    -- NvimTreeNormalNC { bg = M.colors.bg },
    -- NvimTreeEndOfBuffer { bg = M.colors.bg, fg = M.colors.bg },
    -- NvimTreeVertSplit { WinSeparator },
    -- NvimTreeWinSeparator { WinSeparator },
    -- NvimTreeFolderName { fg = M.colors.folder_name },
    -- NvimTreeOpenedFolderName { fg = M.colors.folder_name },
    -- NoiceCmdline { fg = M.colors.cmd_fg, bg = M.colors.bg },
    -- NoiceCmdlineIcon { fg = M.colors.cmd_fg, bg = M.colors.bg },
    -- NoiceCmdlinePopup { fg = M.colors.cmd_fg, bg = M.colors.bg },
    -- NoiceCmdlineIconLua { fg = M.colors.cmd_fg, bg = M.colors.bg },
    -- NoiceCmdlinePopupBorderLua { FloatBorder },
    -- NoiceCmdlinePopupBorderInput { FloatBorder },
    -- NoiceCmdlinePopupBorderSearch { FloatBorder },
    -- NoiceCmdlinePopupBorderCmdline { FloatBorder },
    -- BufferLineOffsetSeparator { NvimTreeWinSeparator },
    -- BufferLineFill { NvimTreeWinSeparator },
    -- BufferLineBufferSelected { fg = M.colors.buffer_selected },
    -- TelescopeNormal { NormalFloat },
    -- TelescopeBorder { FloatBorder },
    -- TerminalBuffer { bg = M.colors.bg, fg = M.colors.fg },
    -- RenderMarkdownCode { bg = M.colors.markdown_code_block_bg },
    -- typescriptParens { fg = M.colors.delimiter }
    --
    -- sym("@number") { fg = M.colors.number },
    -- sym("@boolean") { fg = M.colors.boolean },
    -- sym("@lsp.type.property") { fg = M.colors.fg },
  }
end)

return M
