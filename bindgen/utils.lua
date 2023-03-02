local utils = {}
utils.table = {}

function utils.table.imerge(a, b)
  local result = {}
  for i = 0, #a do table.insert(result, a[i]) end
  for i = 0, #b do table.insert(result, b[i]) end
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
