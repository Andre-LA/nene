--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Fun = {}

--- Filters the content of the array xs through f function.
---
--- It returns a new table with only the elements of xs that
--- passes the filter f.
---
--- Note: The returned table it's a shallow copy.
function Fun.filter<T>(xs: {T}, f: function(T): boolean): {T}
	assert(xs, "you must pass the 'xs' argument.")
	assert(f, "you must pass the 'f' argument.")

	local result: {T} = {}
	local n = 1

	for i=1, #xs do
		local x = xs[i]
		if f(x) then
			result[n] = x
			n = n + 1
		end
	end

	return result
end

--- Maps xs over the function f.
---
--- It returns a new array table whose elements are the results
--- of f over the elements of xs.
function Fun.map<T>(xs: {T}, f: function(T): T): {T}
	assert(xs, "you must pass the 'xs' argument.")
	assert(f, "you must pass the 'f' argument.")

	local result: {T} = {}

	for i=1, #xs do
		result[i] = f(xs[i])
	end

	return result
end

-- endo functions:
-- "endo" functions are mutating functions that changes the content in-place

--- Similar to Fun.map, but it applies f in-place, without
--- creating a new table.
function Fun.endo_map<T>(xs: {T}, f: function(T): T)
	assert(xs, "you must pass the 'xs' argument.")
	assert(f, "you must pass the 'f' argument.")

	for i=1, #xs do
		xs[i] = f(xs[i])
	end
end

return Fun
