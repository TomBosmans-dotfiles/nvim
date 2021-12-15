-- settings
vim.g.db_ui_use_nerd_fonts = true

-- keybindings
local map = require('utils').map
function _G.open_dadbod()
  vim.cmd ':tabnew'
  vim.cmd ':DBUI'
end
map('n', '<leader>db', ':lua open_dadbod()<cr>', options)
