local config = require('config')
local map = require('utils').map

if config.plugins.trouble.enabled then
  map('n', '<space>l', ':Trouble <CR>')
end
