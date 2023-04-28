--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('math/vec2', 'nene_Vec2')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Vec2')
assert(funcs, "no 'funcs' returned")

local vec2 = Node.File.new {
   dependencies = {
      dependencies = {
         ['Vec2i'] = { 'nene', 'math', 'vec2i' }
      },
      header = '"nene/math/vec2.h"',
   },
   modname = 'Vec2',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(vec2, "no 'vec2' created")

vec2:set_op_overloadings({
   ['equals'] = '==',
   ['add'] = '+',
   ['sub'] = '-',
   ['mul'] = '*',
   ['scale'] = '*',
   ['negate'] = '-u',
})

return vec2
