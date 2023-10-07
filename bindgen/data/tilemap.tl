--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast.ast'
local ast_reader = require 'bindgen.ast_reader'
local AstCommon = require 'bindgen.ast_common'
local Utils = require 'bindgen.tools.utils'

local symbols = ast_reader.read_file('tilemap', 'nene_Tilemap')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Tilemap')
assert(funcs, "no 'funcs' returned")

AstCommon.set_on_functions(funcs, {'nene_Tilemap_draw'}, function(fn: AST.Func): any
	-- ast-dumps don't keep the information that some pointer it's actually an array
	-- thus, we need to undo this lost information.
	local tiles = Utils.ifindk(
		fn.params, 'tiles',
		function(param: AST.Func.Param): string
			return param.sym.name
		end
	) as AST.Func.Param
	assert(tiles, "no 'tiles' returned")
	
	tiles.type.ctype = tiles.type.ctype:gsub('uint16_t %*', 'uint16_t []')
end)

local tilemap = AST.Module.new {
	name = 'Tilemap',
	dependencies = {
		{ module = 'Grid' },
		{ module = 'Vec2i' },
		{ module = 'Vec2' },
		{ module = 'TextureAtlas' },
	},
	enums = {},
	structs = structs,
	funcs = funcs,
}
assert(tilemap, "no 'tilemap' created")

return tilemap
