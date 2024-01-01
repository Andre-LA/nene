--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast'
local ast_reader = require 'bindgen.ast_reader'
local AstCommon = require 'bindgen.ast_common'

local symbols = ast_reader.read_file('texture', 'nene_TextureAccess')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local enums = ast_reader.get_enums(symbols, 'nene')
assert(enums, "no 'enums' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Texture')
assert(funcs, "no 'funcs' returned")

AstCommon.autoset_function_kinds(funcs)

AstCommon.set_maybe_functions(funcs, {
	{
		structs,
		'nene_Texture_create_with_access',
		{ ok = 'created', result = 'texture' }
	},
	{
		structs,
		'nene_Texture_create',
		{ ok = 'created', result = 'texture' }
	},
	{
		structs,
		'nene_Texture_load',
		{ ok = 'created', result = 'texture' }
	},
})

local texture = AST.Module.new {
	name = 'Texture',
	dependencies = {
		{ module = 'Vec2' },
		{ module = 'Rect' },
		{ module = 'Color' },
		{ module = 'Core' },
	},
	enums = enums,
	structs = structs,
	funcs = funcs,
}
assert(texture, "no 'texture' created")

return texture
