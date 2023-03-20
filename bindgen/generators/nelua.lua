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

local function _is_private(gen, node, privatize_table, name_id)
  if node.options.is_private then
    return true
  end
  
  local privatize = gen.extracontext.privatize  
  if privatize and privatize[privatize_table] and privatize[privatize_table][node[name_id]] then
    return true
  end

  return false
end

local function is_fn_private(gen, fn)
  return _is_private(gen, fn, 'functions', 'fn_name')
end

local function cimport(cname, options)
  assert(type_of(cname, 'string'), "'cname' should be a string")
  local result = fmt("<cimport '%s', nodecl", cname)

  if options.is_const then
    result = result..', const'
  end
  
  return result..'>'
end

function nelua.gen.new(typemap)
  local c_typemap = {
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
  
  for k, v in pairs(typemap) do
    c_typemap[k] = v
  end

  return typed.instance_of(nelua.gen, 'Generator', { 
    typemap = c_typemap,
    context = {},
    extracontext = {},
  })
end

function nelua.gen:comments(comments)
  local result = {}

  if #comments > 0 then
    for _, comment in ipairs(comments) do
      table.insert(
        result,
        fmt("-- %s", comment)
      )
    end
  end

  return table.concat(result, '\n')
end

function nelua.gen:ctype_to_type(ctype)
  assert(type_of(ctype, 'string'), "'ctype' should be string")

  -- TODO: improve const detection
  local is_const = ctype:match('const ')
  if is_const then
    ctype = ctype:gsub('const ', '')
    is_const = true
  end
  
  local ctype, array, pointers = ctype:match('([%w_]+)([%[%d%]]*) ?(%**)')

  local prefix = #array > 0 and array:gsub('%[%]', '*[0]') or pointers

  local type = prefix..(self.typemap[ctype] or ctype)

  if type == '*char' then
    type = 'cstring'
  end

  return type
end

function nelua.gen:global_var(global_var)
  assert(type_of(global_var, 'GlobalVar', "'global_var' should be a GlobalVar"))
  local result = {}
  
  table.insert(result, self:comments(global_var.comments))

  local namespace = global_var.c_var_name:gsub('_'..global_var.var_name, '')

  table.insert(result, fmt(
    "local %s.%s: %s %s;", 
    self:ctype_to_type(namespace),
    global_var.var_name,
    self:ctype_to_type(global_var.var_type), 
    cimport(global_var.c_var_name, global_var.options)
  ))

  return table.concat(result, '\n')
end 

function nelua.gen:type_alias(type_alias)
  assert(type_of(type_alias, 'TypeAlias', "'type_alias' should be a TypeAlias"))
  local result = {}

  table.insert(result, self:comments(type_alias.comments))
  
  table.insert(result, fmt(
    "local %s = @%s", 
    self:ctype_to_type(type_alias.type_name), 
    self:ctype_to_type(type_alias.type_alias)
  ))

  return table.concat(result, '\n')
end

function nelua.gen:enum(enum)
  assert(type_of(enum, 'EnumDecl', "'enum' should be EnumDecl"))

  local result = {}
  
  table.insert(result, self:comments(enum.comments))

  table.insert(
    result, 
    fmt(
      "local %s %s = @enum(%s){",
      self:ctype_to_type(enum.enum_name),
      cimport(enum.enum_name, enum.options),
      self:ctype_to_type(enum.constants[1].ctype)
    )
  )

  for _, constant in ipairs(enum.constants) do
    table.insert(
      result,
      fmt("  %s = %d,", self:ctype_to_type(constant.field_name), constant.constant)
    )
  end

  table.insert(result, "}")

  return table.concat(result, '\n')
end

function nelua.gen:struct(struct)
  assert(type_of(struct, 'StructDecl'), "'struct' should be StructDecl")

  local result = {}

  table.insert(result, self:comments(struct.comments))
  
  table.insert(
    result, 
    fmt(
      "local %s %s = @record{", 
      self:ctype_to_type(struct.struct_name), 
      cimport(struct.struct_name, struct.options)
    ) 
  )

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
    local annots = ''

    if arg.options.is_const then
      annots = annots..'const'
    end

    if #annots > 0 then
      annots = fmt(' <%s>', annots)
    end
    
    table.insert(result, fmt('%s: %s%s', arg.field_name, atype, annots))
  end

  return table.concat(result, ', ')
end

function nelua.gen:fn(fn)
  assert(type_of(fn, 'FnDecl'), "'fn' should be FnDecl")
  local result = {}

  local args = self:args(fn.args)
  local _cimport = cimport(fn.c_fn_name, fn.options)
  local ret_type = self:ctype_to_type(fn.ret_type)

  table.insert(result, self:comments(fn.comments))
  
  if is_fn_private(self, fn) then
    table.insert(
      result,
      fmt("local function %s_%s(%s): %s %s end", self.context.file.modname, fn.fn_name, args, ret_type, _cimport)
    )
  else
    local fn_name = fn.fn_name
    local namespace = fn.c_fn_name:gsub('_'..fn.fn_name, '')
    local ignore_overloading = self.extracontext.ignore_overloading or {}
    
    if fn.options.is_operator and not ignore_overloading[fn.options.is_operator] then
      fn_name = assert(op_overloading[fn.options.is_operator], "unknown operator overloading: " .. fn.options.is_operator)
    end

    table.insert(
      result,
      fmt("function %s.%s(%s): %s %s end", self:ctype_to_type(namespace), fn_name, args, ret_type, _cimport)
    )
  end

  return table.concat(result, '\n')
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
  
  if extracontext.prepend then
    table.insert(result, extracontext.prepend)
  end

  table.insert(result, '')
  
  for _, type_alias in ipairs(file.aliases) do
    table.insert(result, self:type_alias(type_alias))
    table.insert(result, '')
  end
  
  for _, enum in ipairs(file.enums) do
    table.insert(result, self:enum(enum))
    table.insert(result, '')
  end
  
  for _, struct in ipairs(file.structs) do
    table.insert(result, self:struct(struct))
    table.insert(result, '')
  end
  
  for _, global_var in ipairs(file.global_vars) do
    table.insert(result, self:global_var(global_var))
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
