--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local template = require 'bindgen.template'
local struct, field, fn = template.decls.struct,
                          template.decls.field,
                          template.decls.fn
local ast_reader = require 'bindgen.ast-reader'

local symbols = ast_reader.read_file('build/ast_dumps/audio/music.txt', 'nene_Music')

local structs = ast_reader.get_structs(symbols, 'nene')
local funcs = ast_reader.get_functions(symbols, 'nene_Music')

return template.file(
  -- modname
  'Music',
  -- links
  { template.build.link 'nene' },
  -- headers
  { template.build.header 'nene/audio/music.h' },
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
