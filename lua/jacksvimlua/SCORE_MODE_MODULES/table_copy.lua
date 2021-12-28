-- function copy(obj)
--   local s = {}
--   local res = setmetatable({}, getmetatable(obj))
--   s[obj] = res
--   for k, v in pairs(obj) do res[copy(k, s)] = copy(v, s) end
--   return res
-- end
function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end
return function(obj)
  return deepcopy(obj)
end
