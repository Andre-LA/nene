--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast.ast'
local Utils = require 'bindgen.tools.utils'

local AstCommon = {}

function AstCommon.get_maybe_func_result_type(func: AST.Func, maybe_wrap: AST.Func.Meta.MaybeWrap, structs: {AST.Struct}): (AST.Struct.Field, string)
	local ret_type = Utils.ifindk(structs, func.ret_type.ctype, function(s: AST.Struct): string
		return s.sym.cname
	end) as AST.Struct

	if not ret_type then
		return nil, "Couldn't find '"..func.ret_type.ctype.."' to wrap for maybe function"
	end

	local result_field = Utils.ifindk(ret_type.fields, maybe_wrap.result, function(f: AST.Struct.Field): string
		return f.sym.cname
	end) as AST.Struct.Field

	if not result_field then
		return nil, "Couldn't find '"..maybe_wrap.result.."' result field from the wrapped result structure"
	end

	return result_field
end

function AstCommon.set_maybe_functions(functions: {AST.Func}, maybe_functions: { {{AST.Struct}, string, AST.Func.Meta.MaybeWrap} })
	assert(functions, "'functions' must be given")

	for i, maybe_fn in ipairs(maybe_functions) do
		local structs = assert(
			maybe_fn[1],
			"On 'maybe_functions' #" .. tostring(i) .. " [1]: you must set the first tuple element an AST.Module"
		)
		local fn_name = assert(
			maybe_fn[2],
			"On 'maybe_functions' #" .. tostring(i) .. " [2]: you must set the second tuple element as the function name"
		)
		local maybe_wrap = assert(
			maybe_fn[3],
			"On 'maybe_functions' #" .. tostring(i) .. " [3]: you must set the third tuple element as wraping data"
		)
		if maybe_wrap.result_type then
			print("warn: On 'maybe_functions' #" .. tostring(i) .. " [3]: Avoid setting 'result_type', because it'll be overwritten")
		end

		Utils.find_and_call(
			functions,
			fn_name,
			function(f: AST.Func): string
				return f.sym.cname
			end,
			function(fn: AST.Func): any
				local result_field, err = AstCommon.get_maybe_func_result_type(fn, maybe_wrap, structs)
				assert(result_field, err)

				maybe_wrap.result_type = result_field.type

				fn:set_as_maybe_function(maybe_wrap)
			end
		)
	end
end

return AstCommon
