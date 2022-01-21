local function command_output(cmd)
  vim.cmd("redir => g:_command_output | silent " .. cmd .. " | redir END ")
  local output = vim.g._command_output
  vim.g._command_output = nil
  return output
end

local function notify(msg, title, type)
  vim.notify(msg, type, { title = title })
end

function _G.notify_error(cmd)
  notify(command_output(cmd), cmd, 'error')
end

function _G.notify_warning(cmd)
  notify(command_output(cmd), cmd, 'warn')
end

function _G.notify_info(cmd)
  notify(command_output(cmd), cmd, 'info')
end

function _G.notify_trace(cmd)
  notify(command_output(cmd), cmd, 'trace')
end

function _G.notify_debug(cmd)
  notify(command_output(cmd), cmd, 'debug')
end
