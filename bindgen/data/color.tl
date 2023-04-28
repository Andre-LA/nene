--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('color', 'nene_Color')
assert(symbols, "no 'symbols' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Color')
assert(funcs, "no 'funcs' returned")

local aliases = ast_reader.get_type_aliases(symbols, 'nene_Color')
assert(aliases, "no 'aliases' returned")

local global_vars = ast_reader.get_global_vars(symbols, 'nene_Color')
assert(global_vars, "no 'global_vars' returned")

local color = Node.File.new {
   dependencies = {
      dependencies = {
         ['SDL'] = { '<SDL2/SDL.h>', is_header = true },
      },
      header = '"nene/color.h"',
   },
   modname = 'Color',
   enums = {},
   structs = {},
   funcs = funcs,
   aliases = aliases,
   global_vars = global_vars,
}
assert(color, "no 'color' created")

color:set_op_overloadings({
  ['equals'] = '==',
})

return color
