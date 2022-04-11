local map = require('utils').map
local config = require('config')
if not config.plugins.toggleterm.enabled then return end
local Terminal  = require('toggleterm.terminal').Terminal

local terminal = Terminal:new({ hidden = true })
function _G.toggle_terminal()
  terminal:toggle()
end
map('n', '<leader>t', '<cmd> lua toggle_terminal() <cr>')
map('t', '<esc>', '<cmd> lua toggle_terminal() <cr>')

function _G.run_npm_test()
  local filename = vim.fn.expand("%")
  local test_terminal = Terminal:new({
    cmd = 'npm run test '..filename,
    direction = 'float',
    start_in_insert = true,
    close_on_exit = false,
  })
  test_terminal:toggle()
end
map('n', '<leader>rtf', '<cmd> lua run_npm_test() <cr>')

function _G.run_npm_all_tests()
  local test_terminal = Terminal:new({
    cmd = 'npm run test',
    direction = 'float',
    start_in_insert = true,
    close_on_exit = false,
  })
  test_terminal:toggle()
end
map('n', '<leader>rta', '<cmd> lua run_npm_all_tests() <cr>')

function _G.run_npm_lint()
  local lint_terminal = Terminal:new({
    cmd = 'npm run lint',
    direction = 'float',
    start_in_insert = true,
    close_on_exit = false,
  })
  lint_terminal:toggle()
end
map('n', '<leader>rl', '<cmd> lua run_npm_lint() <cr>')
