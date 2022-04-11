local map = require('utils').map
local config = require('config')

if config.finder == 'telescope' and config.plugins.telescope.enabled then
  map('n', '<leader>ff', ':Telescope git_files <CR>')
  map('n', '<leader>fb', ':Telescope buffers <CR>')
  map('n', '<leader>fa', ':Telescope live_grep <CR>')
  map('n', '<leader>fh', ':Telescope highlights <CR>')
elseif config.finder == 'fzf' and config.plugins.fzf.enabled then
  map('n', '<leader>ff', ':Files <CR>')
  map('n', '<leader>fb', ':Buffers <CR>')
  map('n', '<leader>fa', ':Ag  <CR>')
end

if config.plugins.telescope.enabled and config.plugins.auto_sessions.enabled then
  map('n', '<leader>fs', ':SearchSession <CR>')
end

if config.plugins.telescope.enabled and config.plugins.nvim_notify.enabled then
  map('n', '<leader>fn', ':Telescope notify <CR>')
end
