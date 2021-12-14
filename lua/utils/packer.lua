local C = {}

function C.require_config(plugin)
  local path = '/plugins/' ..plugin
  return function()
    require(path)
  end
end

return C
