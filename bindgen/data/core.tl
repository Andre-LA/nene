--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('core', 'nene_GamepadState')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Core')
assert(funcs, "no 'funcs' returned")

local aliases = ast_reader.get_type_aliases(symbols, 'nene_MilliTime')
assert(aliases, "no 'aliases' returned")

local core = Node.File.new {
   dependencies = {
      dependencies = {
         ['SDL'] = { '"SDL.h"', is_header = true },
         ['Vec2']  = { 'nene', 'math', 'vec2' },
         ['Vec2i'] = { 'nene', 'math', 'vec2i' },
         ['Rect']  = { 'nene', 'math', 'rect' },
         ['Color'] = { 'nene', 'color' },
      },
      header = '"nene/core.h"',
   },
   modname = 'Core',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = aliases,
   global_vars = {},
}
assert(core, "no 'core' created")

return core
