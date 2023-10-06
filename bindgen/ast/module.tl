--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Fun = require 'bindgen.tools.fun'

local Dependency = require 'bindgen.ast.dependency'
local Comment = require 'bindgen.ast.comment'
local Enum = require 'bindgen.ast.enum'
local Struct = require 'bindgen.ast.struct'
local Func = require 'bindgen.ast.func'
local Op = require 'bindgen.ast.op'

local record Module
	dependencies: {Dependency}
	name: string
	comment: Comment
	enums: {Enum}
	structs: {Struct}
	funcs: {Func}
end

local Module_mt: metatable<Module> = { __index = Module }

function Module.new(init: Module): Module
	local mod: Module = {
		name = assert(init.name, "you must set 'name' field."),
		dependencies = Fun.map(
			assert(init.dependencies, "you must set 'dependencies' field."),
			function(d: Dependency): Dependency return Dependency.new(d) end
		),
		enums = Fun.map(
			assert(init.enums, "you must set 'enums' field."),
			function(e: Enum): Enum return Enum.new(e) end
		),
		structs = Fun.map(
			assert(init.structs, "you must set 'structs' field."),
			function(s: Struct): Struct return Struct.new(s) end
		),
		funcs = Fun.map(
			assert(init.funcs, "you must set 'funcs' field."),
			function(f: Func): Func return Func.new(f) end
		),
	}
	return setmetatable(mod, Module_mt)
end

function Module:set_op_overloading(op_table: {string:Op})
	Fun.endo_map(self.funcs, function(func: Func): Func
		local op = op_table[func.sym.name]
		if op then
			func.meta.op_overloading = op
		end
		return func
	end)
end

return Module
