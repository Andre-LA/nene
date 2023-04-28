--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('texture_atlas', 'nene_TextureAtlas')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_TextureAtlas')
assert(funcs, "no 'funcs' returned")

local texture_atlas = Node.File.new {
   dependencies = {
      dependencies = {
         ['Grid'] = { 'nene', 'math', 'grid' },
         ['Vec2i'] = { 'nene', 'math', 'vec2i' },
         ['Vec2'] = { 'nene', 'math', 'vec2' },
         ['Texture'] = { 'nene', 'texture' },
      },
      header = '"nene/texture_atlas.h"',
   },
   modname = 'TextureAtlas',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(texture_atlas, "no 'texture_atlas' created")

return texture_atlas
