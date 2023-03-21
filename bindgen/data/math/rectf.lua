--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local utils = require 'bindgen.utils'
local template = require 'bindgen.template'
local struct, field, fn = template.decls.struct,
                          template.decls.field,
                          template.decls.fn
local ast_reader = require 'bindgen.ast-reader'

local symbols = ast_reader.read_file('build/ast_dumps/math/rectf.txt', 'nene_Rectf')

local structs = ast_reader.get_structs(symbols, 'nene')

local funcs = ast_reader.get_functions(symbols, 'nene_Rectf')

template.appliers.operator_overloading(funcs, {
  ['equals'] = '==',
})

return template.file(
  -- modname
  'Rectf',
  -- links
  { template.build.link 'nene' },
  -- headers
  { template.build.header 'nene/math/rectf.h', template.build.header '<SDL2/SDL.h>' },
  -- enums
  {},
  -- structs
  structs,
  -- funcs
  funcs,
  -- aliases
  {},
  -- global_vars
  {}
)