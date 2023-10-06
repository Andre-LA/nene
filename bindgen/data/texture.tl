--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast.ast'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('texture', 'nene_Texture')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Texture')
assert(funcs, "no 'funcs' returned")

local texture = AST.Module.new {
   name = 'Texture',
   dependencies = {
      { module = 'Vec2' },
      { module = 'Rect' },
      { module = 'Color' },
   },
   enums = {},
   structs = structs,
   funcs = funcs,
}
assert(texture, "no 'texture' created")

return texture
