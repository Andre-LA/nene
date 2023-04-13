--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local utils = require 'bindgen.utils'
local Node = require 'bindgen.node'
local Generator = require 'bindgen.generator'
local Dependencies = require 'bindgen.dependencies'

local fmt = string.format

local op_overloading: {Node.Op:string} = {
  ['+']  = '__add',
  ['-']  = '__sub',
  ['-u'] = '__unm',
  ['*']  = '__mul',
  ['=='] = '__eq',
}

local record NeluaGenerator
   generator: Generator
end

local NeluaGenerator_mt: metatable<NeluaGenerator> = {
   __index = NeluaGenerator
}

function NeluaGenerator.new(lib_typemap: Generator.TypeMap): NeluaGenerator
   local typemap: Generator.TypeMap = {
      ['int'     ] = 'cint',
      ['float'   ] = 'float32',
      ['double'  ] = 'float64',
      ['int8_t'  ] = 'int8',
      ['int16_t' ] = 'int16',
      ['int32_t' ] = 'int32',
      ['int64_t' ] = 'int64',
      ['uint8_t' ] = 'uint8',
      ['uint16_t'] = 'uint16',
      ['uint32_t'] = 'uint32',
      ['uint64_t'] = 'uint64',
      ['bool'    ] = 'boolean',
      ['_Bool'   ] = 'boolean',
   }
   
   for T, langT in pairs(lib_typemap) do
      typemap[T] = langT
   end

   local neluagen: NeluaGenerator = {
      generator = Generator.new(typemap)
   }
   return setmetatable(neluagen, NeluaGenerator_mt)
end

function NeluaGenerator:include_header(header: string): string
   assert(header, "'header' expected")
   assert(#header > 1, "'header' is empty")
   return fmt("## cinclude '%s'", header)
end

function NeluaGenerator:comments(comments: Node.Comments): string
   local result: {string} = {}

   -- generate comment lines
   for _, comment in ipairs(comments) do
      table.insert(result, fmt("-- %s", comment))
   end
   
   return table.concat(result, '\n')
end

function NeluaGenerator:cimport(cname: string): string
   return fmt("<cimport '%s', nodecl>", cname)
end

function NeluaGenerator:global_var(modname: string, global_var: Node.GlobalVar, _: Generator.WrapOptions): string
   local result = {}

   -- generate comments
   table.insert(result, self:comments(global_var.comments))

   -- generate global variable
   table.insert(result, fmt(
      "local %s.%s: %s %s;",
      modname,
      global_var.name,
      self.generator:apply_typemap(global_var.type),
      self:cimport(global_var.cname)
   ))

   return table.concat(result, '\n') .. '\n'
end

function NeluaGenerator:dependency(dep_name: string, dependency: Dependencies.Dependency, _: Generator.WrapOptions): string
   if dependency.is_header then
      return self:include_header(dependency[1])
   else
      return fmt(
         "local %s = require '%s'",
         dep_name,
         table.concat(dependency, '.')
      )
   end
end

function NeluaGenerator:dependencies(dependencies: Dependencies, wrap_options: Generator.WrapOptions): string
   local result: {string} = {}

   -- generate required header
   if dependencies.header then
      table.insert(result, self:include_header(dependencies.header) .. '\n')
   end

   -- generate required modules or headers
   local dep_names, _ = utils.kpairs_to_alphabetic_ipairs(dependencies.dependencies)
   
   -- generate required headers
   for _, dep_name in ipairs(dep_names) do
      local dep = dependencies.dependencies[dep_name]
      if dep.is_header then
         table.insert(result, self:dependency(dep_name, dep, wrap_options))
      end
   end

   -- generate required modules
   for _, dep_name in ipairs(dep_names) do
      local dep = dependencies.dependencies[dep_name]
      if not dep.is_header then
         table.insert(result, self:dependency(dep_name, dep, wrap_options))
      end
   end

   return table.concat(result, '\n') .. '\n'
end

function NeluaGenerator:type_alias(type_alias: Node.TypeAlias, _: Generator.WrapOptions): string
   return fmt(
      "local %s: type = @%s",
      self.generator:apply_typemap(type_alias.name),
      self.generator:apply_typemap(type_alias.aliased_type)
   )
end

function NeluaGenerator:enum_constant(constant: Node.Enum.Constant, _: Generator.WrapOptions): string
   return fmt(
      "  %s = %s,",
      self.generator:apply_typemap(constant.name),
      constant.value
   )
end

function NeluaGenerator:enum(enum: Node.Enum, wrap_options: Generator.WrapOptions): string
   local result = {}

   -- generate comments
   table.insert(result, self:comments(enum.comments))

   -- generate enum name
   table.insert(result, fmt(
      "local %s %s = @enum{",
      self.generator:apply_typemap(enum.name),
      self:cimport(enum.cname)
   ))

   -- generate enum constants
   for _, constant in ipairs(enum.constants) do
      -- TODO: generate comments
      -- generate comments
      table.insert(result, self:enum_constant(constant, wrap_options))
   end

   -- finish enum
   table.insert(result, '}')

   return table.concat(result, '\n') .. '\n'
end

function NeluaGenerator:struct_field(field: Node.Struct.Field, _: Generator.WrapOptions): string
   local result = {}
   -- generate comments
   table.insert(result, '  ' .. self:comments(field.comments))
   -- generate field
   table.insert(result, fmt(
      "  %s: %s,",
      field.name,
      self.generator:apply_typemap(field.type)
   ))
   return table.concat(result, '\n')
end

function NeluaGenerator:struct(struct: Node.Struct, wrap_options: Generator.WrapOptions): string
   local result: {string} = {}

   -- generate comments
   table.insert(result, self:comments(struct.comments))

   -- generate struct name
   table.insert(result, fmt(
      "local %s %s = @record{",
      struct.name,
      self:cimport(struct.cname)
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

function NeluaGenerator:func_param(param: Node.Func.Param, _: Generator.WrapOptions): string
   return fmt(
      '%s: %s',
      param.name,
      self.generator:apply_typemap(param.type)
   )
end

function NeluaGenerator:func_params(params: {Node.Func.Param}, wrap_options: Generator.WrapOptions): string
   local result = {}

   -- generate parameters
   for _, param in ipairs(params) do
      table.insert(result, self:func_param(param, wrap_options))
   end
   
   return '(' .. table.concat(result, ', ') .. ')'
end

function NeluaGenerator:func(func: Node.Func, wrap_options: Generator.WrapOptions): string
   local result = {}

   -- generate comments
   table.insert(result, self:comments(func.comments) .. '\n')

   -- generate scoped function declaration
   if self.generator:is_private_func(func, wrap_options) then
      table.insert(result, fmt(
         "local function %s",
         func.cname
      ))
   else
      local fn_name = func.name

      if func.is_op ~= 'no-op' and not (wrap_options.ignore_overloading and wrap_options.ignore_overloading[func.is_op]) then
         fn_name = op_overloading[func.is_op]
      end
      
      table.insert(result, fmt(
         "function %s.%s",
         self.generator:apply_typemap(func:get_mod_prefix()),
         fn_name
      ))
   end

   -- generate function parameters
   table.insert(result, self:func_params(func.params, wrap_options))
   
   -- generate function return type
   table.insert(result, fmt(
      ": %s ",
      self.generator:apply_typemap(func.ret_type)
   ))

   -- generate function annotation
   table.insert(result, self:cimport(func.cname))

   -- generate end
   table.insert(result, ' end')

   return table.concat(result)
end

function NeluaGenerator:file(file: Node.File, wrap_options: Generator.WrapOptions): string
   local result: {string} = {}

   -- generate dependencies
   table.insert(result, self:dependencies(file.dependencies, wrap_options))

   -- add prepend
   if wrap_options.prepend then
      table.insert(result, '\n' .. wrap_options.prepend  .. '\n')
   end

   -- generate type aliases
   for _, alias in ipairs(file.aliases) do
      table.insert(result, self:type_alias(alias, wrap_options) .. '\n')
   end

   -- generate enumerations
   for _, enum in ipairs(file.enums) do
      table.insert(result, self:enum(enum, wrap_options))
   end

   -- generate structs
   for _, struct in ipairs(file.structs) do
      table.insert(result, self:struct(struct, wrap_options))
   end

   -- generate functions
   for _, func in ipairs(file.funcs) do
      table.insert(result, self:func(func, wrap_options))
   end

   table.insert(result, '')

   -- generate variables
   for _, global_var in ipairs(file.global_vars) do
      table.insert(result, self:global_var(self.generator:apply_typemap(file.modname), global_var, wrap_options))
   end

   -- add append
   if wrap_options.append then
      table.insert(result, '\n' .. wrap_options.append .. '\n')
   end

   -- generate module return
   table.insert(result, fmt('\nreturn %s', self.generator:apply_typemap(file.modname)))

   return table.concat(result, '\n') .. '\n'
end

return NeluaGenerator
