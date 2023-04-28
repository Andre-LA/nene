--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('texture', 'nene_Texture')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Texture')
assert(funcs, "no 'funcs' returned")

local texture = Node.File.new {
   dependencies = {
      dependencies = {
         ['SDL'] = { '<SDL.h>', is_header = true },
         ['Vec2']  = { 'nene', 'math', 'vec2' },
         ['Rect']  = { 'nene', 'math', 'rect' },
         ['Color'] = { 'nene', 'color' },
      },
      header = '"nene/texture.h"',
   },
   modname = 'Texture',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(texture, "no 'texture' created")

return texture
