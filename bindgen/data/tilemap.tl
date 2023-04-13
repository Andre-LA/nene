--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local utils = require 'bindgen.utils'
local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('build/ast_dumps/tilemap.txt', 'nene_Tilemap')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Tilemap')
assert(funcs, "no 'funcs' returned")

local draw_func = utils.ifindk(funcs, 'draw', function(fn: Node.Func): string return fn.name end) as Node.Func
assert(draw_func, "no 'draw_func' returned")

-- ast-dumps don't keep the information that some pointer it's actually an array
-- thus, we need to undo this lost information.
local draw_func_tiles_param = utils.ifindk(draw_func.params, 'tiles', function(param: Node.Func.Param): string return param.name end) as Node.Func.Param
assert(draw_func_tiles_param, "no 'draw_func_tiles_param' returned")
draw_func_tiles_param.type = draw_func_tiles_param.type:gsub('uint16_t %*', 'uint16_t []')

local tilemap = Node.File.new {
   dependencies = {
      dependencies = {
         ['Grid'] = { 'nene', 'math', 'grid' },
         ['Vec2i'] = { 'nene', 'math', 'vec2i' },
         ['Vec2'] = { 'nene', 'math', 'vec2' },
         ['TextureAtlas'] = { 'nene', 'texture_atlas' },
      },
      header = '"nene/tilemap.h"',
   },
   modname = 'Tilemap',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(tilemap, "no 'tilemap' created")

return tilemap
