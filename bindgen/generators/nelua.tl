--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Utils <const> = require 'bindgen.tools.utils'
local AST <const> = require 'bindgen.ast.ast'
local Generator <const> = require 'bindgen.generator'

local fmt <const> = string.format

local op_overloading: {AST.Op:string} = {
	['+']  = '__add',
	['-']  = '__sub',
	['-u'] = '__unm',
	['*']  = '__mul',
	['=='] = '__eq',
}

local record NeluaGenerator
	generator: Generator
	module_ast: AST.Module
end

local NeluaGenerator_mt: metatable<NeluaGenerator> = {
	__index = NeluaGenerator
}

function NeluaGenerator.new(lib_depmap: Generator.DepMap): NeluaGenerator
	local typemap: Generator.TypeMap = {
		['int'] = 'cint',
		['float'] = 'float32',
		['double'] = 'float64',
		['int8_t'] = 'int8',
		['int16_t'] = 'int16',
		['int32_t'] = 'int32',
		['int64_t'] = 'int64',
		['uint8_t'] = 'uint8',
		['uint16_t'] = 'uint16',
		['uint32_t'] = 'uint32',
		['uint64_t'] = 'uint64',
		['bool'] = 'boolean',
		['_Bool'] = 'boolean',
		['cstring'] = 'cstring',
		['void'] = 'void',
	}


	local neluagen: NeluaGenerator = {
		generator = Generator.new(typemap, lib_depmap)
	}

	return setmetatable(neluagen, NeluaGenerator_mt)
end

function NeluaGenerator:type(_type: AST.Type): string
	return self.generator:apply_typemap(_type)
end

function NeluaGenerator:comments(comment: AST.Comment, indent: integer): string
	return self.generator:gen_comments(comment, '--- ', '', indent)
end

function NeluaGenerator:cimport(cname: string): string
	return fmt("<cimport '%s', nodecl>", cname)
end

function NeluaGenerator:header(header: AST.Header, _: Generator.WrapOptions): string
	return fmt("## cinclude '%s'", header.header)
end

function NeluaGenerator:dependency(dependency: AST.Dependency, _: Generator.WrapOptions): string
	return fmt(
		"local %s = require '%s'",
		dependency.module,
		self.generator.depmap[dependency.module]
	)
end

function NeluaGenerator:enum_constant(constant: AST.Enum.Constant, _: Generator.WrapOptions): string
	return fmt(
		"	%s = %s,",
		constant.sym.name,
		constant.constant
	)
end

function NeluaGenerator:enum(enum: AST.Enum, wrap_options: Generator.WrapOptions): string
	local result = {}

	-- generate comments
	table.insert(result, self:comments(enum.sym.comment, 0))

	-- generate enum name
	table.insert(result, fmt(
		"local %s %s = @enum{",
		enum.sym.name,
		self:cimport(enum.sym.cname)
	))

	-- generate enum constants
	for _, constant in ipairs(enum.constants) do
		table.insert(result, self:comments(constant.sym.comment, 1))
		table.insert(result, self:enum_constant(constant, wrap_options))
	end

	-- finish enum
	table.insert(result, '}')

	return table.concat(result, '\n') .. '\n'
end

function NeluaGenerator:struct_field(field: AST.Struct.Field, _: Generator.WrapOptions): string
	local result = {}
	-- generate comments
	table.insert(result, self:comments(field.sym.comment, 1))
	-- generate field
	table.insert(result, fmt(
		"	%s: %s,",
		field.sym.name,
		self:type(field.type)
	))
	return table.concat(result, '\n')
end

function NeluaGenerator:struct(struct: AST.Struct, wrap_options: Generator.WrapOptions): string
	local result: {string} = {}

	-- generate comments
	table.insert(result, self:comments(struct.sym.comment, 0))

	-- generate struct name
	table.insert(result, fmt(
		"local %s %s = @record{",
		struct.sym.name,
		self:cimport(struct.sym.cname)
	))

	-- generate struct fields
	for _, field in ipairs(struct.fields) do
		-- generate fields
		table.insert(result, self:struct_field(field, wrap_options))
	end

	-- finish struct
	table.insert(result, '}')

	return table.concat(result, '\n') .. '\n'
end

function NeluaGenerator:func_param(param: AST.Func.Param, _: Generator.WrapOptions, as_call: boolean): string
	if not as_call then
		return fmt('%s: %s', param.sym.name, self:type(param.type))
	else
		return fmt('%s', param.sym.name)
	end
end

function NeluaGenerator:func_params(params: {AST.Func.Param}, wrap_options: Generator.WrapOptions, as_call: boolean): string
	local result = {}

	-- generate parameters
	for _, param in ipairs(params) do
		table.insert(result, self:func_param(param, wrap_options, as_call))
	end
	
	return '(' .. table.concat(result, ', ') .. ')'
end

function NeluaGenerator:func(func: AST.Func, wrap_options: Generator.WrapOptions): string
	local result = {}

	-- generate function source documenation
	local function fn_comments()
		table.insert(result, self:comments(func.sym.comment, 0) .. '\n')
	end

	-- generate imported C as local function
	local function fn_localfun()
		table.insert(result, fmt(
			"local function %s",
			func.sym.cname
		))
	end

	-- generated imported C function with arbitrary name
	local function fn_named_fun(name: string)
		table.insert(result, fmt(
			"function %s.%s",
			func:get_mod_prefix(),
			name
		))
	end

	-- generate imported C function
	local function fn_fun()
		fn_named_fun(func.sym.name)
	end

	-- generate function parameters
	local function fn_params()
		table.insert(result, self:func_params(func.params, wrap_options, false))
	end

	-- generate function return type
	local function fn_rettype()
		table.insert(result, fmt(
			": %s ",
			self:type(func.ret_type)
		))
	end

	-- generate function annotation
	local function fn_cimport()
		table.insert(result, self:cimport(func.sym.cname) .. ' ')
	end

	-- generate end
	local function fn_end()
		table.insert(result, 'end\n\n')
	end

	-- generate function wrapping body
	local function fn_maybewrap_body()
		table.insert(
			result,
			fmt(
				'\n	local maybe_result = %s%s\n	return maybe_result.%s, maybe_result.%s\n',
				func.sym.cname,
				self:func_params(func.params, wrap_options, true),
				func.meta.maybe_func.ok,
				func.meta.maybe_func.result
			)
		)
	end

	-- generate maybe wrapping function return type
	local function fn_maybewrap_rettype()
		table.insert(result, fmt(
			": (boolean, %s) ",
			self:type(func.meta.maybe_func.result_type)
		))
	end

	-- generate operator overloading wrapping function
	local function fn_op_overloading()
		fn_named_fun(op_overloading[func.meta.op_overloading])
	end

	-- generate read-only property
	local function fn_readonly_property()
		table.insert(result, fmt(
			"local %s.%s: %s <const> = %s()\n",
			self.module_ast.name,
			func.sym.name,
			self:type(func.ret_type),
			func.sym.cname
		))
	end

	if func.meta.is_private then
		fn_localfun()
	else
		fn_comments()
		if func.meta.kind ~= 'op-overloading' then
			fn_fun()
		end
	end

	if func.meta.kind ~= 'op-overloading' then
		fn_params()
		fn_rettype()
		fn_cimport()
		fn_end()
	end

	-- generate respective wrapper
	if func.meta.kind == 'op-overloading' then
		fn_op_overloading()
		fn_params()
		fn_rettype()
		fn_cimport()
		fn_end()
	elseif func.meta.kind == 'maybe' then
		fn_comments()
		fn_fun()
		fn_params()
		fn_maybewrap_rettype()
		fn_maybewrap_body()
		fn_end()
	elseif func.meta.kind == 'readonly-property' then
		fn_comments()
		fn_readonly_property()
	end

	return table.concat(result)
end

function NeluaGenerator:module(module: AST.Module, wrap_options: Generator.WrapOptions): string
	local result: {string} = {}

	self.module_ast = module

	-- add begin prepend
	if wrap_options.begin_prepend then
		table.insert(result, '\n' .. wrap_options.begin_prepend  .. '\n')
	end

	-- generate dependencies
	for _, dependency in ipairs(module.dependencies) do
		table.insert(result, self:dependency(dependency, wrap_options))
	end

	table.insert(result, '')

	-- find if there's a struct that matches the module name
	local struct_mod = Utils.ifindk(
		module.structs,
		module.name,
		function(s: AST.Struct): string
			return s.sym.name
		end
	) as AST.Struct

	if not struct_mod then
		table.insert(result, '')
		table.insert(result, fmt('local %s = @record{}', module.name))
	end

	-- add prepend
	if wrap_options.prepend then
		table.insert(result, '\n' .. wrap_options.prepend  .. '\n')
	end

	-- generate enumerations
	for _, enum in ipairs(module.enums) do
		table.insert(result, self:enum(enum, wrap_options))
	end

	-- generate structs
	for _, struct in ipairs(module.structs) do
		table.insert(result, self:struct(struct, wrap_options))
	end

	-- generate functions
	for _, func in ipairs(module.funcs) do
		table.insert(result, self:func(func, wrap_options))
	end

	table.insert(result, '')

	-- add append
	if wrap_options.append then
		table.insert(result, '\n' .. wrap_options.append .. '\n')
	end

	-- generate exports

	-- generate enumerations
	for _, enum in ipairs(module.enums) do
		if enum.sym.name ~= module.name then 
			table.insert(result, fmt('local %s.%s: type = %s', module.name, enum.sym.name, enum.sym.name))
		end
	end

	-- generate structs
	for _, struct in ipairs(module.structs) do
		if struct.sym.name ~= module.name then 
			table.insert(result, fmt('local %s.%s: type = %s', module.name, struct.sym.name, struct.sym.name))
		end
	end

	-- generate module return
	table.insert(result, fmt('\nreturn %s', module.name))

	return table.concat(result, '\n') .. '\n'
end

return NeluaGenerator
