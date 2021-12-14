local C = {}

function C.require_config(plugin)
  require('/plugins/' ..plugin)
end

return C
