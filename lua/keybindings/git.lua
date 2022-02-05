local config = require('config')
local map = require('utils').map

if config.git == 'neogit' and config.plugins.neogit.enabled then
  map('n', '<leader>ga', ':Neogit <CR>')
elseif config.git == 'fugutive' and config.plugins.fugutive.enabled then
  map('n', '<leader>ga', ':tab Git <CR>')
end

if config.plugins.fugutive.enabled then
  map('n', '<leader>gl', ':Git log <CR>')
  map('n', '<leader>gp', ':lua notify_trace("Git pull") <CR>')
  map('n', '<leader>gP', ':lua notify_trace("Git push origin HEAD --force-with-lease") <CR>')
  map('n', '<leader>gf', ':lua notify_trace("Git fetch") <CR>')
  map('n', '<leader>gr', ':Git rebase --interactive ', { noremap = true, silent = false })
  map('n', '<leader>gR', ':lua notify_trace("Git reset HEAD~") <CR>')
end

if config.plugins.diffview.enabled then
  map('n', '<leader>gdo', ':DiffviewOpen <CR>')
  map('n', '<leader>gdh', ':DiffviewFileHistory <CR>')
end

if config.plugins.gitsigns.enabled then
  map('n', '<leader>ghr', ':Gitsigns reset_hunk<CR>')
  map('n', '<leader>ghR', ':Gitsigns reset_buffer<CR>')
  map('n', '<leader>ghb', ':lua require("gitsigns").blame_line({full=true})<CR>')
  map('n', '<leader>ghp', ':Gitsigns preview_hunk<CR>')
  map('n', '<leader>gtl', ':Gitsigns toggle_linehl<CR>')
end

if config.plugins.telescope.enabled then
  map('n', '<leader>gc', ':Telescope git_branches <CR>')
  map('n', '<leader>gC', ':Telescope git_commits <CR>')
end
