local map = require('utils').map

map('n', 'tn', ':tabnew<cr>')
map('n', 'tc', ':tabclose<cr>')
map('n', 'ts', ':tab split<cr>')
for index = 1, 9, 1 do map('n', 't'..index, index..'gt<cr>') end
