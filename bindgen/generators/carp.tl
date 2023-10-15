--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Utils <const> = require 'bindgen.tools.utils'
local Fun <const> = require 'bindgen.tools.fun'
local AST <const> = require 'bindgen.ast'
local AstCommon <const> = require 'bindgen.ast_common'
local Generator <const> = require 'bindgen.generator'

local fmt <const> = string.format

local record CarpGenerator
	generator: Generator
	module_ast: AST.Module
	indent_level: integer
end

local CarpGenerator_mt: metatable<CarpGenerator> = {
	__index = CarpGenerator
}

function CarpGenerator.new(lib_depmap: Generator.TypeMap): CarpGenerator
	local typemap: Generator.TypeMap = {
		['int'] = 'Int',
		['float'] = 'Float',
		['double'] = 'Double',
		['int8_t'] = 'Int8',
		['int16_t'] = 'Int16',
		['int32_t'] = 'Int32',
		['int64_t'] = 'Int64',
		['uint8_t'] = 'Uint8',
		['uint16_t'] = 'Uint16',
		['uint32_t'] = 'Uint32',
		['uint64_t'] = 'Uint64',
		['bool'] = 'Bool',
		['_Bool'] = 'Bool',
		['cstring'] = '(Ptr CChar)',
		['void'] = '()',
	}

	local carpgen: CarpGenerator = {
		generator = Generator.new(typemap, lib_depmap),
		indent_level = 0,
	}

	return setmetatable(carpgen, CarpGenerator_mt)
end

function CarpGenerator:add_indentation(delta: integer)
	self.indent_level = math.max(self.indent_level + delta, 0)
end

function CarpGenerator:indentation(): string
	return string.rep('	', self.indent_level)
end

function CarpGenerator:type(_type: AST.Type, _: Generator.WrapOptions): string
	local _type = self.generator:apply_typemap(_type)
	_type = _type:gsub('%*(.+)', '(Ptr %1)')
	return _type
end

function CarpGenerator:dependency(dependency: AST.Dependency, _: Generator.WrapOptions): string
	return fmt(
		'(load "%s.carp")',
		self.generator.depmap[dependency.module]
	)
end

function CarpGenerator:enum_constant(constant: AST.Enum.Constant, _: Generator.WrapOptions): string
	return fmt(
		'%s(register %s Int "%s")',
		self:indentation(),
		Utils.from_snake_case_to_kebab_case(constant.sym.name),
		constant.sym.cname
	)
end

function CarpGenerator:enum_constants(constants: {AST.Enum.Constant}, wrap_options: Generator.WrapOptions): string
	self:add_indentation(1)

	local result: {string} = Fun.map(constants, function(c: AST.Enum.Constant): string
		return self:enum_constant(c, wrap_options)
	end)

	self:add_indentation(-1)

	return table.concat(result, '\n')
end

function CarpGenerator:enum(enum: AST.Enum, wrap_options: Generator.WrapOptions): string
	local constants = self:enum_constants(enum.constants, wrap_options)
	return fmt(
		[[
%s(register-type %s "%s")
%s(defmodule %s
%s
%s)]],
		self:indentation(),
		enum.sym.name,
		enum.sym.cname,
		self:indentation(),
		enum.sym.name,
		constants,
		self:indentation()
	)
end

function CarpGenerator:struct_field(field: AST.Struct.Field, _: Generator.WrapOptions): string
	return fmt('%s %s', field.sym.name, self:type(field.type))
end

function CarpGenerator:struct_fields(fields: {AST.Struct.Field}, wrap_options: Generator.WrapOptions): string
	local result: {string} = Fun.map(fields, function(f: AST.Struct.Field): string
		return self:struct_field(f, wrap_options)
	end)

	return table.concat(result, ', ')
end

function CarpGenerator:struct(struct: AST.Struct, wrap_options: Generator.WrapOptions): string
	-- Carp doesn't supports arrays yet.
	local contains_array = #Fun.filter(struct.fields, function(f: AST.Struct.Field): boolean
		local ftype = self:type(f.type)
		return ftype:match('%[') ~= nil
	end) > 0

	if contains_array then -- emit opaque type
		return fmt(
			'%s(register-type %s "%s")',
			self:indentation(),
			struct.sym.name,
			struct.sym.cname
		)
	else
		return fmt(
			'%s(register-type %s "%s" [%s])',
			self:indentation(),
			struct.sym.name,
			struct.sym.cname,
			self:struct_fields(struct.fields, wrap_options)
		)
	end
end

function CarpGenerator:struct_mod(struct: AST.Struct, _: Generator.WrapOptions): string
	return fmt(
		'%s(defmodule %s',
		self:indentation(),
		struct.sym.name
	)
end

function CarpGenerator:func_ret_type(ret_type: AST.Type, wrap_options: Generator.WrapOptions): string
	return self:type(ret_type, wrap_options)
end

function CarpGenerator:func_param(param: AST.Func.Param, _: Generator.WrapOptions, emit_type: boolean): string
	local type_name = emit_type and self:type(param.type) or param.sym.name
	return fmt('%s', type_name)
end

function CarpGenerator:func_params(params: {AST.Func.Param}, wrap_options: Generator.WrapOptions, emit_type: boolean): string
	-- generate parameters
	local result: {string} = Fun.map(params, function(p: AST.Func.Param): string
		return self:func_param(p, wrap_options, emit_type)
	end)

	return table.concat(result, ', ')
end

function CarpGenerator:func(func: AST.Func, wrap_options: Generator.WrapOptions): string
	return fmt(
		'%s(register %s (Fn [%s] %s) "%s")',
		self:indentation(),
		Utils.from_snake_case_to_kebab_case(func.sym.name),
		self:func_params(func.params, wrap_options, true),
		self:func_ret_type(func.ret_type, wrap_options),
		func.sym.cname
	)
end

function CarpGenerator:module(module: AST.Module, wrap_options: Generator.WrapOptions): string
	local result: {string} = {}

	self.module_ast = module
	self.indent_level = 0

	-- add begin prepend
	if wrap_options.begin_prepend then
		table.insert(result, '\n' .. wrap_options.begin_prepend .. '\n')
	end

	-- generate dependencies
	for _, dependency in ipairs(module.dependencies) do
		table.insert(result, self:dependency(dependency, wrap_options))
	end
	table.insert(result, '')

	-- defmodule

	-- if there is a main structure, then we need to ake the module namespace
	local module_struct = Generator.there_is_module_struct(module)
	if not module_struct then
		table.insert(result, fmt('(defmodule %s', module.name))
		self:add_indentation(1)
	end

	-- add prepend
	if wrap_options.prepend then
		table.insert(result, '\n' .. wrap_options.prepend  .. '\n')
	end

	-- TODO: enumerations should probably be inside module's defmodule?
	-- generate enumerations
	for _, enum in ipairs(module.enums) do
		table.insert(result, self:enum(enum, wrap_options))
	end

	table.insert(result, '')

	-- generate structs
	for _, struct in ipairs(module.structs) do
		table.insert(result, self:struct(struct, wrap_options))
	end

	table.insert(result, '')

	-- generate methods
	for _, struct in ipairs(module.structs) do
		local methods = AstCommon.get_methods(struct, module.funcs)

		if #methods > 0 then
			table.insert(result, self:struct_mod(struct, wrap_options))
			self:add_indentation(1)

			for _, func in ipairs(methods) do
				table.insert(result, self:func(func, wrap_options))
			end
			self:add_indentation(-1)
			table.insert(result, self:indentation() .. ')')
		end
	end

	-- generate static (non-methods) functions
	local static_funcs = AstCommon.get_static_functions(module.structs, module.funcs)
	for _, func in ipairs(static_funcs) do
		table.insert(result, self:func(func, wrap_options))
	end

	-- add append
	if wrap_options.append then
		table.insert(result, '\n' .. wrap_options.append .. '\n')
	end

	-- close defmodule
	if not module_struct then
		table.insert(result, ')')
	end

	return table.concat(result, '\n') .. '\n'
end

return CarpGenerator
