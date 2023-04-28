--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('math/segment', 'nene_Segment')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Segment')
assert(funcs, "no 'funcs' returned")

local segment = Node.File.new {
   dependencies = {
      dependencies = {
         ['Vec2'] = { 'nene', 'math', 'vec2' },
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
