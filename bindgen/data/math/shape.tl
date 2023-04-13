--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('build/ast_dumps/math/shape.txt', 'nene_Shape', 'nene_ShapeQuadrilateral')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Shape')
assert(funcs, "no 'funcs' returned")

local segment = Node.File.new {
   dependencies = {
      dependencies = {
         ['Segment'] = { 'nene', 'math', 'segment' },
         ['Rect']    = { 'nene', 'math', 'rect' },
         ['Rectf']   = { 'nene', 'math', 'rectf' },
      },
      header = '"nene/math/segment.h"',
   },
   modname = 'Segment',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(segment, "no 'segment' created")

return segment
