--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('math/rectf', 'nene_Rectf')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Rectf')
assert(funcs, "no 'funcs' returned")

local rectf = Node.File.new {
   dependencies = {
      dependencies = {
         ['SDL'] = { '<SDL.h>', is_header = true },
         ['Vec2'] = { 'nene', 'math', 'vec2' },
         ['Rect'] = { 'nene', 'math', 'rect' },
      },
      header = '"nene/math/rectf.h"',
   },
   modname = 'Rectf',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(rectf, "no 'rectf' created")

rectf:set_op_overloadings({
   ['equals'] = '==',
})

return rectf
