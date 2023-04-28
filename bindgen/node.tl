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

-- TODO: remove these aliases and use function fields on record's declarations

-- Header
local Header_mt: metatable<Node.Header> = { __index = Node.Header }
function Node.Header.new(init: Node.Header): Node.Header
  local header --[[<total>]]: Node.Header = {
    header       = assert(init.header      , "you must set 'header' field."),
    is_sysheader = assert(init.is_sysheader, "you must set 'is_sysheader' field."),
  }
  return setmetatable(header, Header_mt)
end

-- Struct
local Struct_mt: metatable<Node.Struct> = { __index = Node.Struct }
function Node.Struct.new(init: Node.Struct): Node.Struct
  local struct --[[<total>]]: Node.Struct = {
    name     = assert(init.name    , "you must set 'name' field."),
    cname    = assert(init.cname   , "you must set 'cname' field."),
    fields   = assert(init.fields  , "you must set 'fields' field."),
    comments = assert(init.comments, "you must set 'comments' field."),
  }
  return setmetatable(struct, Struct_mt)
end

local StructField_mt: metatable<Node.Struct.Field> = { __index = Node.Struct.Field }

function Node.Struct.Field.new(init: Node.Struct.Field): Node.Struct.Field
  local struct_field --[[<total>]]: Node.Struct.Field = {
    name     = assert(init.name    , "you must set 'name' field."),
    type     = assert(init.type    , "you must set 'type' field."),
    comments = assert(init.comments, "you must set 'comments' field."),
  }
  return setmetatable(struct_field, StructField_mt)
end

-- Enum
local Enum_mt: metatable<Node.Enum> = { __index = Node.Enum }

function Node.Enum.new(init: Node.Enum): Node.Enum
  local enum_node --[[<total>]]: Node.Enum = {
    name      = assert(init.name     , "you must set 'name' field."),
    cname     = assert(init.cname    , "you must set 'cname' field."),
    constants = assert(init.constants, "you must set 'constants' field."),
    comments  = assert(init.comments , "you must set 'comments' field."),
  }
  return setmetatable(enum_node, Enum_mt)
end

local EnumConstant_mt: metatable<Node.Enum.Constant> = { __index = Node.Enum.Constant }

function Node.Enum.Constant.new(init: Node.Enum.Constant): Node.Enum.Constant
  local enum_constant --[[<total>]]: Node.Enum.Constant = {
    name      = assert(init.name    , "you must set 'name' field."),
    value     = assert(init.value   , "you must set 'value' field."),
    comments  = assert(init.comments, "you must set 'comments' field."),
  }
  return setmetatable(enum_constant, EnumConstant_mt)
end

-- Func
local Func_mt: metatable<Node.Func> = { __index = Node.Func }

function Node. Func.new(init: Node.Func): Node.Func
  local func --[[<total>]]: Node.Func = {
    name     = assert(init.name    , "you must set 'name' field."),
    cname    = assert(init.cname   , "you must set 'cname' field."),
    ret_type = assert(init.ret_type, "you must set 'ret_type' field."),
    params   = assert(init.params  , "you must set 'params' field."),
    comments = assert(init.comments, "you must set 'comments' field."),
    is_op    = assert(init.is_op   , "you must set 'is_op' field."),
  }
  return setmetatable(func, Func_mt)
end

function Node.Func:get_mod_prefix(): string
  return (self.cname:gsub('_'..self.name, ''))
end

local FuncParam_mt: metatable<Node.Func.Param> = { __index = Node.Func.Param }

function Node.Func.Param.new(init: Node.Func.Param): Node.Func.Param
  local fn_param --[[<total>]]: Node.Func.Param = {
    name     = assert(init.name    , "you must set 'name' field."),
    type     = assert(init.type    , "you must set 'type' field."),
    comments = assert(init.comments, "you must set 'comments' field."),
  }
  return setmetatable(fn_param, FuncParam_mt)
end

-- GlobalVar
local GlobalVar_mt: metatable<Node.GlobalVar> = { __index = Node.GlobalVar }

function Node.GlobalVar.new(init: Node.GlobalVar): Node.GlobalVar
  local globalvar --[[<total>]]: Node.GlobalVar = {
    name     = assert(init.name    , "you must set 'name' field."),
    cname    = assert(init.cname   , "you must set 'cname' field."),
    type     = assert(init.type    , "you must set 'type' field."),
    comments = assert(init.comments, "you must set 'comments' field."),
  }
  return setmetatable(globalvar, GlobalVar_mt)
end

-- TypeAlias
local TypeAlias_mt: metatable<Node.TypeAlias> = { __index = Node.TypeAlias }

function Node.TypeAlias.new(init: Node.TypeAlias): Node.TypeAlias
  local typealias --[[<total>]]: Node.TypeAlias = {
    name         = assert(init.name        , "you must set 'name' field."),
    cname        = assert(init.cname       , "you must set 'cname' field."),
    aliased_type = assert(init.aliased_type, "you must set 'aliased_type' field."),
    comments     = assert(init.comments    , "you must set 'comments' field."),
  }
  return setmetatable(typealias, TypeAlias_mt)
end

-- File:
local File_mt: metatable<Node.File> = { __index = Node.File }

function Node.File.new(init: Node.File): Node.File
  local file --[[<total>]]: Node.File = {
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

function Node.File:set_op_overloadings(op_table: {string:Node.Op})
  for _, func in ipairs(self.funcs) do
    if op_table[func.name] then
      func.is_op = op_table[func.name]
    end
  end
end

return Node
