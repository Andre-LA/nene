--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast'
local ast_reader = require 'bindgen.ast_reader'
local AstCommon = require 'bindgen.ast_common'

local symbols = ast_reader.read_file('audio/sound', 'nene_Sound')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Sound')
assert(funcs, "no 'funcs' returned")

AstCommon.set_maybe_functions(funcs, {
	{
		structs,
		'nene_Sound_load',
		{ ok = 'created', result = 'sound' }
	},
})

local sound = AST.Module.new {
	name = 'Sound',
	dependencies = {},
	enums = {},
	structs = structs,
	funcs = funcs,
}
assert(sound, "no 'sound' created")

return sound
