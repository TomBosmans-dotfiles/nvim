---@diagnostic disable: undefined-global

local config = require('config')
if config.theme ~= 'lush' then return end

local lush = require("lush")
local base = require('plugins/lush/github_dark')
local hsl = lush.hsl

local colors = {
  background = hsl(210, 12, 16)
}

local theme = lush.extends({base}).with(function()
  return {
    CursorLine{ bg = colors.background.lighten(5) },
    NonText { fg = colors.background.lighten(10) }
  }
end)

lush(theme)
