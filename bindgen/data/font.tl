--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast'
local ast_reader = require 'bindgen.ast_reader'
local AstCommon = require 'bindgen.ast_common'

-- Danger! Be careful about cyclic dependency
local TextureMod = require 'bindgen.data.texture'

local symbols = ast_reader.read_file('font', 'nene_TextQuality')
assert(symbols, "no 'symbols' returned")

local enums = ast_reader.get_enums(symbols, 'nene_TextQuality')
assert(enums, "no 'enums' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Font')
assert(funcs, "no 'funcs' returned")

AstCommon.set_maybe_functions(funcs, {
	{
		structs,
		'nene_Font_load',
		{ ok = 'created', result = 'font' }
	},
	{
		structs,
		'nene_Font_get_glyph_metrics',
		{ ok = 'queried', result = 'metrics' }
	},
	{
		structs,
		'nene_Font_get_text_dimensions',
		{ ok = 'calculated', result = 'dimensions' }
	},
	{
		TextureMod.structs,
		'nene_Font_render',
		{ ok = 'created', result = 'texture' }
	},
})

local font = AST.Module.new {
	name = 'Font',
	dependencies = {
		{ module = 'Vec2i' },
		{ module = 'Texture' },
		{ module = 'Color' },
	},
	enums = enums,
	structs = structs,
	funcs = funcs,
}
assert(font, "no 'font' created")

return font
