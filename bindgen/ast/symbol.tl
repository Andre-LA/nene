--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Comment = require 'bindgen.ast.comment'
local Utils = require 'bindgen.tools.utils'

local record Symbol
	name: string
	cname: string
	comment: Comment
end

local Symbol_mt: metatable<Symbol> = { __index = Symbol }

function Symbol.new(init: Symbol): Symbol
	local sym: Symbol = {
		name = assert(init.name, "you must set 'name' field."),
		cname = assert(init.cname, "you must set 'cname' field."),
		comment = Comment.new(assert(init.comment, "you must set 'comment' field.")),
	}
	return setmetatable(sym, Symbol_mt)
end

function Symbol:cname_without_prefixes(prefix_count: integer): string
	assert(prefix_count > 0, 'prefix_count must be greater than 0')
	return Utils.pipe {
		Utils.string_separate, { self.cname, '(%w+)_?' }, -- separate identifier by underscores
		Utils.slice, { prefix_count + 1 }, -- remove "prefix_count" prefixes from the sequence
		table.concat, { '_' } -- merge again as an identifier
	} as string
end

function Symbol:cname_with_only_prefixes(prefix_count: integer): string
	assert(prefix_count > 0, 'prefix_count must be greater than 0')
	return Utils.pipe {
		Utils.string_separate, { self.cname, '(%w+)_?' }, -- separate identifier by underscores
		Utils.slice, { 1, prefix_count }, -- keep only "prefix_count" prefixes from the sequence
		table.concat, { '_' } -- merge again as an identifier
	} as string
end

return Symbol
