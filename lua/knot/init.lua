local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

local M = {}

function M.load()
  local lush = require("lush")
  local theme = require("lush_themes.knot")

  opt.background = 'dark'
  g.colors_name = 'knot'
  package.loaded['lush_themes.knot'] = nil

  lush(theme.theme)
end

function M.setup()
  cmd("color knot")
end

return M
