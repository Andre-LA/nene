local utils = {}
utils.table = {}

function utils.table.imerge(...)
  local result = {}
  for i = 1, select('#', ...) do
    local t = select(i, ...)
    for j = 0, #t do table.insert(result, t[j]) end
  end
  return result
end

function utils.table.no_repeat(values, predicate)
  local result = {}
  local tbl = {}

  for _, value in ipairs(values) do
    local r = predicate(value)
    if not tbl[r] then
      table.insert(result, value)
      tbl[r] = true
    end
  end
  
  return result
end

return utils
