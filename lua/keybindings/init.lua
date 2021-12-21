local map = require('utils').map

-- LEADER
vim.g.mapleader = ','

-- TABS
map('n', 'tn', ':tabnew<cr>')
map('n', 'tc', ':tabclose<cr>')
map('n', 'ts', ':tab split<cr>')
for index = 1, 9, 1 do map('n', 't'..index, index..'gt<cr>') end

-- COPY TO CLIPBOARD
map('n', '<leader>cfr', ':let @+ = expand("%")<cr>')
map('n', '<leader>cff', ':let @+ = expand("%:p")<cr>')
map('n', '<leader>cfn', ':let @+ = expand("%:t")<cr>')

require('keybindings/git')
