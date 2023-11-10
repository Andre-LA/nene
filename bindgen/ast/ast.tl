--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Comment = require 'bindgen.ast.comment'
local Enum = require 'bindgen.ast.enum'
local Func = require 'bindgen.ast.func'
local Header = require 'bindgen.ast.header'
local Module = require 'bindgen.ast.module'
local Op = require 'bindgen.ast.op'
local Struct = require 'bindgen.ast.struct'
local Symbol = require 'bindgen.ast.symbol'
local Type = require 'bindgen.ast.type'
local Dependency = require 'bindgen.ast.dependency'

local AST = {
	Comment = Comment,
	Enum = Enum,
	Func = Func,
	Header = Header,
	Module = Module,
	Dependency = Dependency,
	Op = Op,
	Struct = Struct,
	Symbol = Symbol,
	Type = Type,
}

return AST
