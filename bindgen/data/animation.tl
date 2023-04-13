--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('build/ast_dumps/animation.txt', 'nene_Animation')
assert(symbols, "no 'symbols' returned")

local enums = ast_reader.get_enums(symbols, 'nene')
assert(enums, "no 'enums' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Animation')
assert(funcs, "no 'funcs' returned")

local animation = Node.File.new {
   dependencies = {
      dependencies = {},
      header = '"nene/animation.h"',
   },
   modname = 'Animation',
   enums = enums,
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(animation, "no 'animation' created")

animation:set_op_overloadings({
  ['equals'] = '==',
})

return animation
