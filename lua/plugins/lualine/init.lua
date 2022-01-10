local config = require('config')
local Utils = require('plugins/lualine/utils')
local Spotify = require('plugins/lualine/spotify')

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = config.theme,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {{ "diagnostics", sources = { "nvim_diagnostic" } }, 'diff'},
    lualine_x = {'filetype'},
    lualine_y = {'location'},
    lualine_z = {}
  },
  inactive_sections = {
    lualine_a = {Utils.windowNumber},
    lualine_b = {'filename', { "diagnostics", sources = { "nvim_diagnostic" } }, 'diff'},
    lualine_c = {},
    lualine_x = {'filetype'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {Utils.logo},
    lualine_b = {'branch'},
    lualine_c = {},
    lualine_x = {
      { Spotify.spotifyLogo, color = 'lualine_a_insert', padding = 0, cond = Spotify.show },
      { Spotify.currentSong, color = 'Character', separator = { right = '', left = '' }, cond = Spotify.show },
    },

    lualine_y = { { Utils.tabCount, separator = { right = '', left = '' } } },
    lualine_z = {}
  },
  extensions = {'fzf', 'nvim-tree'}
}
