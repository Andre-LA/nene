--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('font', 'nene_Font')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Font')
assert(funcs, "no 'funcs' returned")

local enums = ast_reader.get_enums(symbols, 'nene_TextQuality')
assert(enums, "no 'enums' returned")

local font = Node.File.new {
   dependencies = {
      dependencies = {
         ['SDL_ttf'] = { '"SDL_ttf.h"', is_header = true },
         ['Vec2i']  = { 'nene', 'math', 'vec2i' },
         ['Texture']  = { 'nene', 'texture' },
         ['Color'] = { 'nene', 'color' },
      },
      header = '"nene/font.h"',
   },
   modname = 'Font',
   enums = enums,
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(font, "no 'font' created")

return font
