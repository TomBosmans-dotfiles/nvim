local config = require('config')
local map = require('utils').map

if config.git == 'neogit' and config.plugins.neogit.enabled then
  map('n', '<leader>ga', ':Neogit <CR>')
elseif config.git == 'fugutive' and config.plugins.fugutive.enabled then
  map('n', '<leader>ga', ':tab Git <CR>')
end

if config.plugins.fugutive.enabled then
  map('n', '<leader>gp', ':Git pull <CR>')
  map('n', '<leader>gP', ':Git push origin HEAD --force-with-lease <CR>')
  map('n', '<leader>gf', ':Git fetch <CR>')
  map('n', '<leader>gr', ':Git rebase --interactive ', { noremap = true, silent = false })
end

if config.plugins.diffview.enabled then
  map('n', '<leader>gdo', ':DiffviewOpen <CR>')
  map('n', '<leader>gdh', ':DiffviewFileHistory <CR>')
end

if config.plugins.gitsigns.enabled then
  map('n', '<leader>ghr', ':Gitsigns reset_hunk<CR>')
  map('n', '<leader>ghb', ':Gitsigns blame_line<CR>')
  map('n', '<leader>ghp', ':Gitsigns preview_hunk<CR>')
end

if config.plugins.telescope.enabled then
  map('n', '<leader>gc', ':Telescope git_branches <CR>')
  map('n', '<leader>gC', ':Telescope git_commits <CR>')
end
