--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local utils = {}

function utils.imerge<T>(...: {T}): {T}
  local result: {T} = {}
  for i = 1, select('#', ...) do
    local t = select(i, ...)
    for j = 1, #t do
      table.insert(result, t[j])
    end
  end
  return result
end

function utils.no_repeat(values: {any}, predicate: function(any): any): {any}
  local result: {any} = {}
  local tbl: {any:boolean} = {}

  for _, value in ipairs(values) do
    local r: any = predicate(value)
    if not tbl[r] then
      table.insert(result, value)
      tbl[r] = true
    end
  end

  return result
end

function utils.ifindk(tbl: {any}, value: any, searcher: function(v: any): any): any
  for _, v in ipairs(tbl) do
    if searcher(v) == value then
      return v
    end
  end
  return nil
end

return utils
