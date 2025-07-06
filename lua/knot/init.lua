local M = {}

function M.load()
  local lush = require("lush")
  local theme = require("themes.slipknot")

  vim.opt.background = 'dark'
  vim.g.colors_name = 'slipknot'
  package.loaded['themes.slipknot'] = nil

  lush(theme.theme)
end

function M.setup()
  vim.cmd("color knot")
end

return M
