local config = require('config')

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
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'branch'},
    lualine_x = {},
    lualine_y = {tabCount},
    lualine_z = {}
  },
  extensions = {'fzf', 'nvim-tree'}
}
