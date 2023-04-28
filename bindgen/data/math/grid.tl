--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('math/grid', 'nene_Grid')
assert(symbols, " no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, " no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Grid')
assert(funcs, " no 'funcs' returned")

local grid = Node.File.new {
   dependencies = {
      dependencies = {
         ['Vec2i'] = { 'nene', 'math', 'vec2i' },
         ['Rect']  = { 'nene', 'math', 'rect' },
      },
      header = '"nene/math/grid.h"',
   },
   modname = 'Grid',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(grid, "no 'grid' created")

grid:set_op_overloadings({
   ['equals'] = '==',
})

return grid
