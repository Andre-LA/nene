--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('core', 'nene_WindowFlags')
assert(symbols, "no 'symbols' returned")

local enums = ast_reader.get_enums(symbols, 'nene')
assert(enums, "no 'enums' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Core')
assert(funcs, "no 'funcs' returned")

local core = AST.Module.new {
	name = 'Core',
	dependencies = {
		{ module = 'Vec2' },
		{ module = 'Vec2i' },
		{ module = 'Rect' },
		{ module = 'Color' },
	},
	enums = enums,
	structs = structs,
	funcs = funcs,
}
assert(core, "no 'core' created")

return core
