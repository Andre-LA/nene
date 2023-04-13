--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('build/ast_dumps/math/rect.txt', 'nene_Rect')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Rect')
assert(funcs, "no 'funcs' returned")

local rect = Node.File.new {
   dependencies = {
      dependencies = {
         ['SDL'] = { '<SDL2/SDL.h>', is_header = true },
         ['Vec2i'] = { 'nene', 'math', 'vec2i' },
      },
      header = '"nene/math/rect.h"',
   },
   modname = 'Rect',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(rect, "no 'rect' created")

rect:set_op_overloadings({
   ['equals'] = '==',
})

return rect
