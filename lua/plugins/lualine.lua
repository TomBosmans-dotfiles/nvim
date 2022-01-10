local config = require('config')
local spotify = require('nvim-spotify').status
spotify:start()

local function logo()
  return ''
end

local function spotifyLogo()
  local listen = spotify.listen()
  if (listen) then return '  ' else return listen end
end

local function currentSong()
  local listen = spotify.listen():gsub('▶ ', ''):gsub('⏸ ', '')
  local song, _, artist = listen:match('^(.*)(by)(.*)$')
  return ' '..song..'ﴁ'..artist
end

local function spotifyLine()
  if not config.spotify_enabled then return end
  return {
    { spotifyLogo, color = 'lualine_a_insert', padding = 0 },
    { currentSong, color = 'Character', separator = { right = '', left = ''}},
  }
end

local function windowNumber()
  return vim.api.nvim_exec([[echo winnr()]], true)
end

local function tabCount()
  return ' '..vim.fn.tabpagenr()..'/'..vim.fn.tabpagenr('$')
end

require'lualine'.setup {
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
    lualine_a = {windowNumber},
    lualine_b = {'filename', { "diagnostics", sources = { "nvim_diagnostic" } }, 'diff'},
    lualine_c = {},
    lualine_x = {'filetype'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {logo},
    lualine_b = {'branch'},
    lualine_c = {},
    lualine_x = spotifyLine(),
    lualine_y = { { tabCount, separator = { right = '', left = '' } } },
    lualine_z = {}
  },
  extensions = {'fzf', 'nvim-tree'}
}
