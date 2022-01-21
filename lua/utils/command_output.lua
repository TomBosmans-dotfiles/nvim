local C =  {}
function C.command_output(cmd)
  vim.cmd("redir => g:_command_output | silent " .. cmd .. " | redir END ")
  local output = vim.g._command_output
  vim.g._command_output = nil
  return output
end
return C
