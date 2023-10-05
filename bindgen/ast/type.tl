--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Utils = require 'bindgen.tools.utils'

local primitive_types: {string:boolean} = {
	['int'] = true,
	['float'] = true,
	['double'] = true,
	['int8_t'] = true,
	['int16_t'] = true,
	['int32_t'] = true,
	['int64_t'] = true,
	['uint8_t'] = true,
	['uint16_t'] = true,
	['uint32_t'] = true,
	['uint64_t'] = true,
	['bool'] = true,
	['_Bool'] = true,
	['cstring'] = true
}

local function is_primitive_type(ctype: string): boolean
	return not not primitive_types[ctype]
end

local record Type
	type: string
	ctype: string
end

local Type_mt: metatable<Type> = { __index = Type }

function Type.new(init: Type): Type
	local ty: Type = {
		type = assert(init.type, "you must set 'type' field."),
		ctype = assert(init.ctype, "you must set 'ctype' field."),
	}
	return setmetatable(ty, Type_mt)
end

function Type.from_ctype(ctype: string): Type
	local _ctype = ctype
	ctype = ctype:gsub('const char %*', 'cstring')

	local type_id, pointers = ctype:match('([_%w]+) ?(%**)')

	-- if it isn't a primitive type, then remove library prefix
	if not is_primitive_type(type_id) then
		type_id = Utils.pipe {
			Utils.string_separate, { type_id, '(%w+)_?' },
			Utils.slice, { 2 },
			table.concat, { '_' }
		} as string
	end

	ctype = (pointers or '') .. type_id

	return Type.new {
		type = type_id,
		ctype = _ctype,
	}
end

return Type
