--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast.ast'
local ast_reader = require 'bindgen.ast_reader'
local AstCommon = require 'bindgen.ast_common'

local symbols = ast_reader.read_file('color', 'nene_Color')
assert(symbols, "no 'symbols' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Color')
assert(funcs, "no 'funcs' returned")

AstCommon.set_op_overloading_functions(funcs, {
	['nene_Color_equals'] = '==',
})

AstCommon.set_on_functions(
	funcs,
	{
		'nene_Color_black',
		'nene_Color_white',
		'nene_Color_red',
		'nene_Color_green',
		'nene_Color_blue',
		'nene_Color_yellow',
		'nene_Color_cyan',
		'nene_Color_bg',
	},
	function(fn: AST.Func): any
		fn:set_as_readonly_property()
	end
)

local color = AST.Module.new {
	name = 'Color',
	dependencies = {},
	enums = {},
	structs = {},
	funcs = funcs,
}
assert(color, "no 'color' created")

return color
