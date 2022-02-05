require('plugins/lualine/redraw')

local Utils = require('plugins/lualine/utils')
local Spotify = require('plugins/lualine/spotify')
local filename = require('plugins/lualine/filename')
local diff = require('plugins/lualine/diff')
local diagnostics = require('plugins/lualine/diagnostics')

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = {},
    section_separators = {},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {{ 'filetype', colored = false, icon_only = true }},
    lualine_b = {filename},
    lualine_c = {diff, diagnostics},
    lualine_x = {'filetype'},
    lualine_y = {'location'},
    lualine_z = {}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {filename},
    lualine_c = {diff, diagnostics},
    lualine_x = {'filetype'},
    lualine_y = {'location'},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {},
    lualine_x = {
      { Spotify.spotifyLogo, color = 'lualine_a_insert', padding = 0, cond = Spotify.show },
      { Spotify.currentSong, color = 'Character', cond = Spotify.show },
    },

    lualine_y = {{ Utils.tabCount }},
    lualine_z = {}
  },
  extensions = {'fzf', 'nvim-tree'}
}
