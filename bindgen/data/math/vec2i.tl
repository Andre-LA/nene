--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast.ast'
local ast_reader = require 'bindgen.ast_reader'
local AstCommon = require 'bindgen.ast_common'

local symbols = ast_reader.read_file('math/vec2i', 'nene_Vec2i')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Vec2i')
assert(funcs, "no 'funcs' returned")

AstCommon.set_op_overloading_functions(funcs, {
   ['nene_Vec2i_equals'] = '==',
   ['nene_Vec2i_add'] = '+',
   ['nene_Vec2i_sub'] = '-',
	-- TODO: make a wrapper of this
   ['nene_Vec2i_mul'] = '*',
   ['nene_Vec2i_scale'] = '*',
   ['nene_Vec2i_negate'] = '-u',
})

local vec2i = AST.Module.new {
	name = 'Vec2i',
	dependencies = {},
	enums = {},
	structs = structs,
	funcs = funcs,
}
assert(vec2i, "no 'vec2i' created")

return vec2i
