--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require('bindgen.node')
local ast_reader = require('bindgen.ast_reader')

local symbols = ast_reader.read_file('collision', 'nene_Collision')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Collision')
assert(funcs, "no 'funcs' returned")

local collision = Node.File.new({
   dependencies = {
      dependencies = {
         ['Vec2'] = { 'nene', 'math', 'vec2' },
         ['Rectf'] = { 'nene', 'math', 'rectf' },
         ['Segment'] = { 'nene', 'math', 'segment' },
      },
      header = '"nene/collision.h"',
   },
   modname = 'Collision',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
})
assert(collision, "no 'collision' created")

return collision
