local typed = require 'bindgen.typed'
local type_of, array_of, array_of_decls = typed.type_of, typed.array_of, typed.array_of_decls

local fmt = string.format

local op_overloading = {
  ['+'] = '__add',
  ['-'] = '__sub',
  ['-u']= '__unm',
  ['*'] = '__mul',
  ['==']= '__eq',
}

local nelua = {}
nelua.gen = typed('Generator', {})

local function is_fn_private(gen, fn)
  if fn.options.is_private then
    return true
  end
  
  local privatize = gen.extracontext.privatize  
  if privatize and privatize.functions and privatize.functions[fn.fn_name] then
    return true
  end

  return false
end

local function cimport(cname)
  assert(type_of(cname, 'string'), "'cname' should be a string")
  return fmt("<cimport '%s', nodecl>", cname)
end

function nelua.gen.new(typemap)
  local c_typemap = {
    ['float'] = 'float32',
    ['int32_t'] = 'int32',
    ['bool'] = 'boolean',
  }
  
  for k, v in pairs(typemap) do
    c_typemap[k] = v
  end

  return typed.instance_of(nelua.gen, 'Generator', { 
    typemap = c_typemap,
    context = {},
    extracontext = {},
  })
end

function nelua.gen:ctype_to_type(ctype)
  assert(type_of(ctype, 'string'), "'ctype' should be string")
  return self.typemap[ctype] or ctype
end

function nelua.gen:struct(struct)
  assert(type_of(struct, 'StructDecl'), "'struct' should be StructDecl")
  
  local result = { fmt("local %s %s = @record{", struct.struct_name, cimport(struct.c_struct_name)) }

  for i, field in ipairs(struct.fields) do
    local ftype = self:ctype_to_type(field.ctype)
    table.insert(result, string.format("  %s: %s,", field.field_name, ftype))
  end

  table.insert(result, '}')

  return table.concat(result, '\n')
end

function nelua.gen:args(args)
  assert(array_of(args, 'FieldDecl'), "'args' should be FieldDecl")
  local result = {}

  for i, arg in ipairs(args) do
    local atype = self:ctype_to_type(arg.ctype)
    local annots = '' -- TODO: will be used for <const>
    
    table.insert(result, fmt('%s: %s%s', arg.field_name, atype, annots))
  end

  return table.concat(result, ', ')
end

function nelua.gen:fn(fn)
  assert(type_of(fn, 'FnDecl'), "'fn' should be FnDecl")
  local result = {}

  local args = self:args(fn.args)
  local _cimport = cimport(fn.c_fn_name)
  local ret_type = self:ctype_to_type(fn.ret_type)
  
  if is_fn_private(self, fn) then
    table.insert(
      result,
      fmt("local function %s_%s(%s): %s %s end", self.context.file.modname, fn.fn_name, args, ret_type, _cimport)
    )
  else
    local fn_name = fn.fn_name
    local ignore_overloading = self.extracontext.ignore_overloading or {}
    
    if fn.options.is_operator and not ignore_overloading[fn.options.is_operator] then
      fn_name = assert(op_overloading[fn.options.is_operator], "unknown operator overloading: " .. fn.options.is_operator)
    end

    table.insert(
      result,
      fmt("function %s.%s(%s): %s %s end", self.context.file.modname, fn_name, args, ret_type, _cimport)
    )
  end

  return table.concat(result)
end

function nelua.gen:file(file, extracontext)
  assert(type_of(file, 'File'), "'file' should be File")
  local extracontent = extracontent or {}

  self.context = {
    file = file,
  }
  self.extracontext = extracontext

  local result = {}

  for _, link in ipairs(file.links) do
    table.insert(result, fmt("## linklib '%s'", link.link))
  end
  
  for _, header in ipairs(file.headers) do
    if header.header:sub(1, 1) == '<' then
      table.insert(result, fmt([[## cinclude '%s']], header.header))
    else
      table.insert(result, fmt([[## cinclude '"%s"']], header.header))
    end
  end

  table.insert(result, '')

  if extracontext.dependencies then
    for _, dep in ipairs(extracontext.dependencies) do
      if dep.modname then
        table.insert(result, fmt("local %s = require '%s'", dep.modname, dep.path))
      else
        table.insert(result, fmt("require '%s'", dep.path))
      end
    end
  end

  table.insert(result, '')
  
  for _, struct in ipairs(file.structs) do
    table.insert(result, self:struct(struct))
    table.insert(result, '')
  end
  
  for _, func in ipairs(file.funcs) do
    table.insert(result, self:fn(func))
    table.insert(result, '')
  end

  if extracontext.append then
    table.insert(result, extracontext.append)
  end

  table.insert(result, fmt('return %s', file.modname))

  self.context = {}
  self.extracontext = {}

  return table.concat(result, '\n') .. '\n'
end

return nelua
