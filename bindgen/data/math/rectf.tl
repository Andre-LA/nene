--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast.ast'
local ast_reader = require 'bindgen.ast_reader'
local AstCommon = require 'bindgen.ast_common'

local symbols = ast_reader.read_file('math/rectf', 'nene_Rectf')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Rectf')
assert(funcs, "no 'funcs' returned")

AstCommon.set_op_overloading_functions(funcs, {
	['nene_Rectf_equals'] = '==',
})

AstCommon.set_on_functions(
	funcs,
	{ 'nene_Rectf_zero' },
	function(fn: AST.Func): any
		fn:set_as_readonly_property()
	end
)

local rectf = AST.Module.new {
	name = 'Rectf',
	dependencies = {
		{ module = 'Vec2' },
		{ module = 'Rect' },
	},
	enums = {},
	structs = structs,
	funcs = funcs,
}
assert(rectf, "no 'rectf' created")

return rectf
