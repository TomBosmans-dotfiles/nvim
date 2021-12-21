local map = require('utils').map

map('n', '<leader>cfr', ':let @+ = expand("%")<cr>')
map('n', '<leader>cff', ':let @+ = expand("%:p")<cr>')
map('n', '<leader>cfn', ':let @+ = expand("%:t")<cr>')
