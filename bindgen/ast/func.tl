--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Fun = require 'bindgen.tools.fun'
local Utils = require 'bindgen.tools.utils'

local Symbol = require 'bindgen.ast.symbol'
local Type = require 'bindgen.ast.type'
local Op = require 'bindgen.ast.op'

local Struct = require 'bindgen.ast.struct'

local record Func
	record Param
		sym: Symbol
		type: Type
	end

	record Meta
		enum Kind
			'default'
			'op-overloading'
			'maybe'
		end

		record MaybeWrap
			ok: string
			result: string
			result_type: Type
		end

		kind: Kind
		is_private: boolean
		op_overloading: Op
		maybe_func: MaybeWrap
	end

	sym: Symbol
	ret_type: Type
	params: {Param}
	meta: Meta
end

local Func_mt: metatable<Func> = { __index = Func }
local Param_mt: metatable<Func.Param> = { __index = Func.Param }
local Meta_mt: metatable<Func.Meta> = { __index = Func.Meta }

function Func.Param.new(init: Func.Param): Func.Param
	local param: Func.Param = {
		sym = Symbol.new(assert(init.sym, "you must set 'sym' field.")),
		type = Type.new(assert(init.type, "you must set 'type' field.")),
	}
	return setmetatable(param, Param_mt)
end

function Func.Meta.MaybeWrap.new(init: Func.Meta.MaybeWrap): Func.Meta.MaybeWrap
	local maybe_wrap: Func.Meta.MaybeWrap = {
		ok = assert(init.ok, "'you must set the 'ok' field"),
		result = assert(init.result, "'you must set the 'result' field"),
		result_type = assert(init.result_type, "'you must set the 'result_type' field"),
	}
	return maybe_wrap
end

function Func.Meta.new(init: Func.Meta): Func.Meta
	local param: Func.Meta = {
		kind = init.kind or 'default',
		is_private = init.is_private or false,
		op_overloading = init.op_overloading, -- optional!
		maybe_func = init.maybe_func, -- optional!
	}
	return setmetatable(param, Meta_mt)
end

function Func.new(init: Func): Func
	local func: Func = {
		sym = Symbol.new(assert(init.sym, "you must set 'sym' field.")),
		ret_type = assert(init.ret_type, "you must set 'ret_type' field."),
		params =	Fun.map(
			assert(init.params, "you must set 'params' field."),
			function(p: Func.Param): Func.Param return Func.Param.new(p) end
		),
		meta = assert(init.meta, "you must set 'meta' field."),
	}
	return setmetatable(func, Func_mt)
end

function Func:get_mod_prefix(): string
	local libprefix = self.sym:cname_with_only_prefixes(1)
	local cmodname = self.sym:cname_with_only_prefixes(2)
	return (cmodname:gsub(libprefix..'_', ''))
end

function Func:get_maybewrap_result_field(structs: {Struct}): (Struct.Field, string)
	local ret_type = Utils.ifindk(structs, self.ret_type.ctype, function(s: Struct): string
		return s.sym.cname
	end) as Struct

	if not ret_type then
		return nil, "Couldn't find '"..self.ret_type.ctype.."' to wrap for maybe function"
	end

	local result_field = Utils.ifindk(ret_type.fields, self.meta.maybe_func.result, function(f: Struct.Field): string
		return f.sym.cname
	end) as Struct.Field

	if not result_field then
		return nil, "Couldn't find '"..self.meta.maybe_func.result.."' result field from the wrapped result structure"
	end

	return result_field
end

function Func:set_as_maybe_function(maybe_fn: Func.Meta.MaybeWrap)
	self.meta = Func.Meta.new({
		kind = 'maybe',
		is_private = true,
		maybe_func = Func.Meta.MaybeWrap.new(maybe_fn),
	})
end

function Func:set_as_op_overloading_function(op: Op)
	self.meta = Func.Meta.new({
		kind = 'op-overloading',
		is_private = false,
		op_overloading = op,
	})
end

return Func
