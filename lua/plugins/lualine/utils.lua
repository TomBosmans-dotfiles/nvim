local Utils = {}

function Utils.logo()
  return ''
end

function Utils.windowNumber()
  return vim.api.nvim_exec([[echo winnr()]], true)
end

function Utils.tabCount()
  return ' '..vim.fn.tabpagenr()..'/'..vim.fn.tabpagenr('$')
end

return Utils
