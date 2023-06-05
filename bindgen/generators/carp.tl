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

-- TODO: operator overloading

local record CarpGenerator
   generator: Generator
end

local CarpGenerator_mt: metatable<CarpGenerator> = {
   __index = CarpGenerator
}

function CarpGenerator.new(lib_typemap: Generator.TypeMap): CarpGenerator
   local typemap: Generator.TypeMap = {
      ['int'     ] = 'Int',
      ['float'   ] = 'Float',
      ['double'  ] = 'Double',
      ['int8_t'  ] = 'Int8',
      ['int16_t' ] = 'Int16',
      ['int32_t' ] = 'Int32',
      ['int64_t' ] = 'Int64',
      ['uint8_t' ] = 'Uint8',
      ['uint16_t'] = 'Uint16',
      ['uint32_t'] = 'Uint32',
      ['uint64_t'] = 'Uint64',
      ['bool'    ] = 'Bool',
      ['_Bool'   ] = 'Bool',
      ['cstring' ] = '(Ptr CChar)',
      ['void' ] = '()',
   }
   
   for T, langT in pairs(lib_typemap) do
      typemap[T] = langT
   end

   local carpgen: CarpGenerator = {
      generator = Generator.new(typemap)
   }
   return setmetatable(carpgen, CarpGenerator_mt)
end

function CarpGenerator:apply_typemap(type: string): string
   local ty = self.generator:apply_typemap(type)
                            :gsub("([%*%[%]%d]+)(%a[%w_]+)", "(%1 %2)")
                            :gsub("%*", "Ptr")
                            :gsub("([%[%d%]]+) (%a[%w_]+)", "Ptr %2")
   return ty
end

function CarpGenerator:global_var(global_var: Node.GlobalVar, _: Generator.WrapOptions): string
   return fmt(
      '(register %s %s)',
      global_var.name,
      self:apply_typemap(global_var.type)
   )
end

function CarpGenerator:include_header(header: string): string
   assert(header, "'header' expected")
   assert(#header > 1, "'header' is empty")
   return fmt('(Unsafe.preproc (Unsafe.emit-c "#include %s"))', header:gsub('"', '\\"'))
end

function CarpGenerator:dependency(dep_name: string, dependency: Dependencies.Dependency, _: Generator.WrapOptions): string
   if dependency.is_header then
      return self:include_header(dependency[1])
   else
      return table.concat({
         fmt('(load "%s.carp")', table.concat(dependency, '/'))
         -- fmt('(use %s)', dep_name)
      }, '\n')
   end
end

function CarpGenerator:dependencies(dependencies: Dependencies, wrap_options: Generator.WrapOptions): string
   local result: {string} = {}

   -- generate required header
   if dependencies.header then
      table.insert(result, self:include_header(dependencies.header) .. '\n')
   end

   -- generate required modules or readers
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

function CarpGenerator:type_alias(type_alias: Node.TypeAlias, _: Generator.WrapOptions): string
   return fmt(
      '(register-type %s "%s")',
      self:apply_typemap(type_alias.name),
      self:apply_typemap(type_alias.aliased_type)
   )
end

function CarpGenerator:enum_constant(constant: Node.Enum.Constant, enum: Node.Enum, _: Generator.WrapOptions): string
   return fmt(
      '  (register %s %s "%s")',
      constant.name:lower():gsub('_', '-'):gsub('nene%-', ''),
      self:apply_typemap(enum.name),
      constant.name
   )
end

function CarpGenerator:enum(enum: Node.Enum, wrap_options: Generator.WrapOptions): string
   local result: {string} = {}

   table.insert(result, fmt(
      '(register-type %s "%s")',
      self:apply_typemap(enum.name),
      enum.cname
   ))

   for _, constant in ipairs(enum.constants) do
      table.insert(result, self:enum_constant(constant, enum, wrap_options))
   end

   return table.concat(result, '\n') .. '\n'
end

function CarpGenerator:struct_field(field: Node.Struct.Field, _: Generator.WrapOptions): string
   return fmt('%s %s', field.name, self:apply_typemap(field.type))
end

function CarpGenerator:struct(struct: Node.Struct, wrap_options: Generator.WrapOptions): string
   -- struct fields
   local struct_fields: {string} = {}

   for _, field in ipairs(struct.fields) do
      table.insert(struct_fields, self:struct_field(field))
   end
   
   return fmt(
      '(register-type %s "%s" [%s])',
      struct.name,
      struct.cname,
      table.concat(struct_fields, ', ')
   )
end

function CarpGenerator:func_param(param: Node.Func.Param, _: Generator.WrapOptions): string
   return self:apply_typemap(param.type)
end

function CarpGenerator:func_params(params: {Node.Func.Param}, wrap_options: Generator.WrapOptions): string
   local func_params: {string} = {}

   for _, param in ipairs(params) do
      table.insert(func_params, self:func_param(param, wrap_options))
   end

   return table.concat(func_params, ' ')
end

function CarpGenerator:func(func: Node.Func, wrap_options: Generator.WrapOptions): string
   return fmt(
      '(register %s (Fn [%s] %s) "%s")',
      func.name:gsub('_', '-'),
      self:func_params(func.params, wrap_options),
      self:apply_typemap(func.ret_type),
      func.cname
   )
end

function CarpGenerator:file(file: Node.File, wrap_options: Generator.WrapOptions): string
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

   -- defmodule
   table.insert(result, fmt('(defmodule %s', file.modname))

   -- generate functions
   for _, func in ipairs(file.funcs) do
      table.insert(result, self:func(func, wrap_options))
   end

   -- generate variables
   for _, global_var in ipairs(file.global_vars) do
      table.insert(result, self:global_var(global_var, wrap_options))
   end
   
   -- add append
   if wrap_options.append then
      table.insert(result, '\n' .. wrap_options.append .. '\n')
   end

   -- indent everything after defmodule and close it
   local indent = false
   for i=1, #result do
      if indent then
         result[i] = '  ' .. result[i]
      end
      if result[i] == ('(defmodule ' .. file.modname) then
         indent = true
      end
   end
   table.insert(result, ')')

   return table.concat(result, '\n') .. '\n'
end

return CarpGenerator
