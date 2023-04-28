--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('math/vec2i', 'nene_Vec2i')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Vec2i')
assert(funcs, "no 'funcs' returned")

local vec2i = Node.File.new {
   dependencies = {
      dependencies = {},
      header = '"nene/math/vec2i.h"',
   },
   modname = 'Vec2i',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(vec2i, "no 'vec2i' created")

vec2i:set_op_overloadings({
   ['equals'] = '==',
   ['add'] = '+',
   ['sub'] = '-',
   ['mul'] = '*',
   ['scale'] = '*',
   ['negate'] = '-u',
})

return vec2i
