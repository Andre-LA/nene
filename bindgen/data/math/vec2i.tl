--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast'
local ast_reader = require 'bindgen.ast_reader'
local AstCommon = require 'bindgen.ast_common'

local symbols = ast_reader.read_file('math/vec2i', 'nene_Vec2i')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Vec2i')
assert(funcs, "no 'funcs' returned")

AstCommon.autoset_function_kinds(funcs)

AstCommon.set_op_overloading_functions(funcs, {
	['nene_Vec2i_equals'] = '==',
	['nene_Vec2i_add'] = '+',
	['nene_Vec2i_sub'] = '-',
	['nene_Vec2i_negate'] = '-u',
})

AstCommon.set_on_functions(
	funcs,
	{ 'nene_Vec2i_mul', 'nene_Vec2i_scale' },
	function(fn: AST.Func): any
		fn.meta.is_private = true
	end
)

AstCommon.set_on_functions(
	funcs,
	{ 'nene_Vec2i_zero', 'nene_Vec2i_one' },
	function(fn: AST.Func): any
		fn:set_as_readonly_property()
	end
)

local vec2i = AST.Module.new {
	name = 'Vec2i',
	dependencies = {},
	enums = {},
	structs = structs,
	funcs = funcs,
}
assert(vec2i, "no 'vec2i' created")

return vec2i
