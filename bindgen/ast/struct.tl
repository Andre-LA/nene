--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
	SPDX-License-Identifier: Zlib
]]

local Fun = require 'bindgen.tools.fun'

local Symbol = require 'bindgen.ast.symbol'
local Type = require 'bindgen.ast.type'

local record Struct
	record Field
		sym: Symbol
		type: Type
	end

	sym: Symbol
	fields: {Field}
end

local Struct_mt: metatable<Struct> = { __index = Struct }
local StructField_mt: metatable<Struct.Field> = { __index = Struct.Field }

function Struct.Field.new(init: Struct.Field): Struct.Field
	local struct_field --[[<total>]]: Struct.Field = {
		sym = Symbol.new(assert(init.sym, "you must set 'sym' field.")),
		type = Type.new(assert(init.type, "you must set 'type' field.")),
	}
	return setmetatable(struct_field, StructField_mt)
end

function Struct.new(init: Struct): Struct
	local struct --[[<total>]]: Struct = {
		sym = Symbol.new(assert(init.sym, "you must set 'sym' field.")),
		fields = Fun.map(
			assert(init.fields, "you must set 'fields' field."),
			function(f: Struct.Field): Struct.Field return Struct.Field.new(f) end
		),
	}
	return setmetatable(struct, Struct_mt)
end

return Struct
