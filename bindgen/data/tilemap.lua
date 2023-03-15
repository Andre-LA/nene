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
local utils = require 'bindgen.utils'

local symbols = ast_reader.read_file('build/ast_dumps/tilemap.txt', 'nene_Tilemap')

local structs = ast_reader.get_structs(symbols, 'nene')
local funcs = ast_reader.get_functions(symbols, 'nene_Tilemap')

local tiles_arg = utils.table.ifindk(
  ( utils.table.ifindk(funcs, 'draw', function(fn) return fn.fn_name end) ).args,
  'tiles',
  function(arg) return arg.field_name end
)
tiles_arg.ctype = tiles_arg.ctype:gsub('uint16_t %*', 'uint16_t[]')

return template.file(
  -- modname
  'Tilemap',
  -- links
  { template.build.link 'nene' },
  -- headers
  { template.build.header 'nene/tilemap.h' },
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
