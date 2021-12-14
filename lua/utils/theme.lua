local T = {}
T.load_theme = function(theme)
  vim.cmd('silent! colorscheme ' ..theme)
end
return T
