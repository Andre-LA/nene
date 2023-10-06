--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Utils = {}

function Utils.kpairs_to_alphabetic_ipairs<K,V>(tbl: {K:V}): ({K}, {V})
	local keys: {K} = {}
	local values: {V} = {}
	for k, _ in pairs(tbl) do
		table.insert(keys, k)
	end
	table.sort(keys)
	for i, k in ipairs(keys) do
		values[i] = tbl[k]
	end
	return keys, values
end

function Utils.imerge<T>(...: {T}): {T}
	local result: {T} = {}
	for i = 1, select('#', ...) do
		local t = select(i, ...)
		for j = 1, #t do
			table.insert(result, t[j])
		end
	end
	return result
end

function Utils.no_repeat(values: {any}, predicate: function(any): any): {any}
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

function Utils.ifindk(tbl: {any}, value: any, searcher: function(v: any): any): any
	for _, v in ipairs(tbl) do
		if searcher(v) == value then
			return v
		end
	end
	return nil
end

function Utils.find_and_call<T>(tbl: {T}, value: any, searcher: function(v: T): (any), callback: function(v: T): any): any
	local result = Utils.ifindk(tbl, value, searcher) as T

	if result ~= nil then
		return callback(result)
	end
end

function Utils.string_separate(str: string, separator: string): {string}
	local words: {string} = {}
	for word in string.gmatch(str, separator) do
		table.insert(words, word)
	end
	return words
end

function Utils.slice<T>(arr: {T}, first: integer, last: integer): {T}
	assert(arr, "you must pass 'arr' argument")
	assert(first ~= 0, "first must be different than 0")

	if not last then
		last = #arr
	end

	assert(last ~= 0, "last must be different than 0")

	if first < 0 then
		first = #arr - first
	end

	if last < 0 then
		last = #arr - last
	end

	return table.move(arr, first, last, 1, {}) 
end

function Utils.from_all_caps_to_pascal_case(all_caps: string): string
	local words = Utils.string_separate(all_caps, '(%w+)_?')
	local result: {string} = {}

	for _, word in ipairs(words) do
		table.insert(result, word:sub(1, 1) .. word:sub(2, -1):lower())
	end

	return table.concat(result)
end

function Utils.pipe(pipeline: {any}): any
	assert(pipeline, "'pipeline' argument expected.")
	assert(#pipeline % 2 == 0, "on 'pipeline' argument: expected even number of arguments.")

	local result: any = nil

	for i = 1, #pipeline, 2 do
		local i_str = tostring(i)
		local fn = pipeline[i] as function
		local args = pipeline[i+1] as {any}

		assert(
			fn and type(fn) == 'function',
			"on pipeline #"..i_str..": function expected, got " .. type(fn)
		)

		if i == 1 then
			result = table.remove(args, 1)
		end

		result = fn(result, table.unpack(args))

		assert(type(result) ~= nil, "on function #"..i_str..": got nil result")
	end

	return result
end

return Utils
