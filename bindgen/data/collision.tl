--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('collision', 'nene_Collision')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Collision')
assert(funcs, "no 'funcs' returned")

local collision = AST.Module.new {
	name = 'Collision',
	dependencies = {
		{ module = 'Vec2' },
		{ module = 'Rectf' },
		{ module = 'Segment' },
	},
	enums = {},
	structs = structs,
	funcs = funcs,
}
assert(collision, "no 'collision' created")

return collision
