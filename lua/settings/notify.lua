local command_output = require('utils').command_output

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
