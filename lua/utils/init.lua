local U = {}

U.on_attach = require('utils/lsp').on_attach

function U.command_output(cmd)
  vim.cmd("redir => g:_command_output | silent " .. cmd .. " | redir END ")
  local output = vim.g._command_output
  vim.g._command_output = nil
  return output
end

function U.map(mode, keybinding, command, options)
  local map = vim.api.nvim_set_keymap
  local defaults = { noremap = true, silent = true }

  return map(mode, keybinding, command, options or defaults)
end

function U.load_theme(theme)
  vim.cmd('silent! colorscheme ' ..theme)
end

return U
