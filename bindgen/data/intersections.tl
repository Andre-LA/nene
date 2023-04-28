--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local utils = require 'bindgen.utils'
local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('intersections', 'nene_IntersectionRectfWithRectf')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = utils.imerge(
  (assert(ast_reader.get_functions(symbols, 'nene_Intersections'), "get_functions[1] got no return value")),
  (assert(ast_reader.get_functions(symbols, 'nene_IntersectionRectfWithRectf'), "get_functions[2] got no return value")),
  (assert(ast_reader.get_functions(symbols, 'nene_IntersectionSegmentWithRectf'), "get_functions[3] got no return value")),
  (assert(ast_reader.get_functions(symbols, 'nene_IntersectionSegmentWithSegment'), "get_functions[4] got no return value"))
) as {Node.Func}
assert(funcs, "no 'funcs' returned")

local intersections = Node.File.new {
   dependencies = {
      dependencies = {
         ['Vec2'] = { 'nene', 'math', 'vec2' },
         ['Rectf'] = { 'nene', 'math', 'rectf' },
         ['Segment'] = { 'nene', 'math', 'segment' },
      },
      header = '"nene/intersections.h"',
   },
   modname = 'Intersections',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(intersections, "no 'intersections' created")

return intersections
