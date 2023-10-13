--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast'
local ast_reader = require 'bindgen.ast_reader'
local AstCommon = require 'bindgen.ast_common'

local symbols = ast_reader.read_file('animation', 'nene_Animation')
assert(symbols, "no 'symbols' returned")

local enums = ast_reader.get_enums(symbols, 'nene')
assert(enums, "no 'enums' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Animation')
assert(funcs, "no 'funcs' returned")

AstCommon.set_op_overloading_functions(funcs, {
	['nene_Animation_equals'] = '==',
})

local animation = AST.Module.new {
	name = 'Animation',
	dependencies = {},
	enums = enums,
	structs = structs,
	funcs = funcs,
}
assert(animation, "no 'animation' created")

return animation
