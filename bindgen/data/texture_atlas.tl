--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast.ast'
local ast_reader = require 'bindgen.ast_reader'
local AstCommon = require 'bindgen.ast_common'

local symbols = ast_reader.read_file('texture_atlas', 'nene_TextureAtlas')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_TextureAtlas')
assert(funcs, "no 'funcs' returned")

AstCommon.set_maybe_functions(funcs, {
	{
		structs,
		'nene_TextureAtlas_load',
		{ ok = 'created', result = 'texture_atlas' }
	},
})

local texture_atlas = AST.Module.new {
	name = 'TextureAtlas',
	dependencies = {
		{ module = 'Grid' },
		{ module = 'Vec2i' },
		{ module = 'Vec2' },
		{ module = 'Texture' },
	},
	enums = {},
	structs = structs,
	funcs = funcs,
}
assert(texture_atlas, "no 'texture_atlas' created")

return texture_atlas
