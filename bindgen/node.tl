--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Dependencies = require 'bindgen.dependencies'

local record Node
  enum Op
    'no-op'
    '+'
    '-'
    '-u'
    '*'
    '=='
  end  

  record Comments
    {string}
  end

  record Header
    header: string
    is_sysheader: boolean
  end

  record Struct
    record Field
      name: string
      type: string
      comments: Comments
      new: function(Field): Field
    end

    name: string
    cname: string
    fields: {Field}
    comments: Comments
  end

  record Enum
    record Constant
      name: string
      value: integer
      comments: Comments
      new: function(Constant): Constant
    end

    name: string
    cname: string
    constants: {Constant}
    comments: Comments
  end

  record Func
    record Param
      name: string
      type: string
      comments: Comments
      new: function(Param): Param
    end

    name: string
    cname: string
    ret_type: string
    params: {Param}
    comments: Comments
    is_op: Op
  end

  record GlobalVar
    name: string
    cname: string
    type: string
    comments: Comments
  end

  record TypeAlias
    name: string
    cname: string
    aliased_type: string
    comments: Comments
  end

  record File
    dependencies: Dependencies
    modname: string
    enums: {Enum}
    structs: {Struct}
    funcs: {Func}
    aliases: {TypeAlias}
    global_vars: {GlobalVar}
  end
end

-- Header
local Header = Node.Header
local Header_mt: metatable<Header> = { __index = Header }

function Header.new(init: Header): Header
  local header --[[<total>]]: Header = {
    header       = assert(init.header      , "you must set 'header' field."),
    is_sysheader = assert(init.is_sysheader, "you must set 'is_sysheader' field."),
  }
  return setmetatable(header, Header_mt)
end

-- Struct
local Struct = Node.Struct
local Struct_mt: metatable<Struct> = { __index = Struct }

function Struct.new(init: Struct): Struct
  local struct --[[<total>]]: Struct = {
    name     = assert(init.name    , "you must set 'name' field."),
    cname    = assert(init.cname   , "you must set 'cname' field."),
    fields   = assert(init.fields  , "you must set 'fields' field."),
    comments = assert(init.comments, "you must set 'comments' field."),
  }
  return setmetatable(struct, Struct_mt)
end

local StructField = Node.Struct.Field
local StructField_mt: metatable<StructField> = { __index = StructField }

function StructField.new(init: StructField): StructField
  local struct_field --[[<total>]]: StructField = {
    name     = assert(init.name    , "you must set 'name' field."),
    type     = assert(init.type    , "you must set 'type' field."),
    comments = assert(init.comments, "you must set 'comments' field."),
  }
  return setmetatable(struct_field, StructField_mt)
end

-- Enum
local Enum = Node.Enum
local Enum_mt: metatable<Enum> = { __index = Enum }

function Enum.new(init: Enum): Enum
  local enum_node --[[<total>]]: Enum = {
    name      = assert(init.name     , "you must set 'name' field."),
    cname     = assert(init.cname    , "you must set 'cname' field."),
    constants = assert(init.constants, "you must set 'constants' field."),
    comments  = assert(init.comments , "you must set 'comments' field."),
  }
  return setmetatable(enum_node, Enum_mt)
end

local EnumConstant = Node.Enum.Constant
local EnumConstant_mt: metatable<EnumConstant> = { __index = EnumConstant }

function EnumConstant.new(init: EnumConstant): EnumConstant
  local enum_constant --[[<total>]]: EnumConstant = {
    name      = assert(init.name    , "you must set 'name' field."),
    value     = assert(init.value   , "you must set 'value' field."),
    comments  = assert(init.comments, "you must set 'comments' field."),
  }
  return setmetatable(enum_constant, EnumConstant_mt)
end

-- Func
local Func = Node.Func
local Func_mt: metatable<Func> = {
  __index = Func,
}

function Func.new(init: Func): Func
  local func --[[<total>]]: Func = {
    name     = assert(init.name    , "you must set 'name' field."),
    cname    = assert(init.cname   , "you must set 'cname' field."),
    ret_type = assert(init.ret_type, "you must set 'ret_type' field."),
    params   = assert(init.params  , "you must set 'params' field."),
    comments = assert(init.comments, "you must set 'comments' field."),
    is_op    = assert(init.is_op   , "you must set 'is_op' field."),
  }
  return setmetatable(func, Func_mt)
end

function Func:get_mod_prefix(): string
  return (self.cname:gsub('_'..self.name, ''))
end

local FuncParam = Node.Func.Param
local FuncParam_mt: metatable<FuncParam> = { __index = FuncParam }

function FuncParam.new(init: FuncParam): FuncParam
  local fn_param --[[<total>]]: FuncParam = {
    name     = assert(init.name    , "you must set 'name' field."),
    type     = assert(init.type    , "you must set 'type' field."),
    comments = assert(init.comments, "you must set 'comments' field."),
  }
  return setmetatable(fn_param, FuncParam_mt)
end

-- GlobalVar
local GlobalVar = Node.GlobalVar
local GlobalVar_mt: metatable<GlobalVar> = { __index = GlobalVar }

function GlobalVar.new(init: GlobalVar): GlobalVar
  local globalvar --[[<total>]]: GlobalVar = {
    name     = assert(init.name    , "you must set 'name' field."),
    cname    = assert(init.cname   , "you must set 'cname' field."),
    type     = assert(init.type    , "you must set 'type' field."),
    comments = assert(init.comments, "you must set 'comments' field."),
  }
  return setmetatable(globalvar, GlobalVar_mt)
end

-- TypeAlias
local TypeAlias = Node.TypeAlias
local TypeAlias_mt: metatable<TypeAlias> = { __index = TypeAlias }

function TypeAlias.new(init: TypeAlias): TypeAlias
  local typealias --[[<total>]]: TypeAlias = {
    name         = assert(init.name        , "you must set 'name' field."),
    cname        = assert(init.cname       , "you must set 'cname' field."),
    aliased_type = assert(init.aliased_type, "you must set 'aliased_type' field."),
    comments     = assert(init.comments    , "you must set 'comments' field."),
  }
  return setmetatable(typealias, TypeAlias_mt)
end

-- File:
local File = Node.File
local File_mt: metatable<File> = { __index = File }

function File.new(init: File): File
  local file --[[<total>]]: File = {
    dependencies = assert(init.dependencies, "you must set 'dependencies' field."),
    modname      = assert(init.modname     , "you must set 'modname' field."),
    enums        = assert(init.enums       , "you must set 'enums' field."),
    structs      = assert(init.structs     , "you must set 'structs' field."),
    funcs        = assert(init.funcs       , "you must set 'funcs' field."),
    aliases      = assert(init.aliases     , "you must set 'aliases' field."),
    global_vars  = assert(init.global_vars , "you must set 'global_vars' field."),
  }
  return setmetatable(file, File_mt)
end

function File:set_op_overloadings(op_table: {string:Node.Op})
  for _, func in ipairs(self.funcs) do
    if op_table[func.name] then
      func.is_op = op_table[func.name]
    end
  end
end

return Node
