local M = {}
local map = vim.api.nvim_set_keymap
local default_options = { noremap = true, silent = true }

function M.map(mode, keybinding, command, options)
  return map(mode, keybinding, command, options or default_options)
end

return M
