local typed = require 'bindgen.typed'
local type_of, array_of, array_of_decls = typed.type_of, typed.array_of, typed.array_of_decls

local template = {
  build = {},
  decls = {},
  appliers = {},
}

function template.build.link(link)
  assert(type_of(link, 'string'), "'link' should be a string")

  return typed('Link', {
    link = link,
  })
end

function template.build.header(header)
  assert(type_of(header, 'string'), "'header' should be a string")

  return typed('Header', {
    header = header,
  })
end

function template.decls.field(field_name, options, ctype, constant, comments)
  assert(type_of(field_name, "string"), "'field_name' should be a string")
  assert(type_of(ctype, "string"), "'ctype' should be a string")
  
  return typed('FieldDecl', {
    field_name = field_name,
    options = options,
    ctype = ctype,
    comments = comments or {},
    constant = constant, -- for enum constants
  })
end

function template.decls.enum(enum_name, options, constants, comments)
  assert(type_of(enum_name, "string"), "'enum_name' should be a string")
  assert(type_of(options, "table", "'options' should be a table"))
  assert(array_of(constants, 'FieldDecl'), "'constants' should be an array of FieldDecl")

  return typed('EnumDecl', {
    enum_name = enum_name,
    options = options,
    constants = constants,
    comments = comments or {},
  })
end

function template.decls.fn(fn_name, options, c_fn_name, ret_type, args, comments)
  assert(type_of(fn_name, "string"), "'fn_name' should be a string")
  assert(type_of(options, "table", "'options' should be a table"))
  assert(type_of(c_fn_name, "string"), "'c_fn_name' should be a string")
  assert(type_of(ret_type, "string"), "'ret_type' should be a string")
  assert(array_of(args, 'FieldDecl'), "'args' should be an array of FieldDecl")

  return typed('FnDecl', {
    fn_name = fn_name,
    options = options,
    c_fn_name = c_fn_name,
    ret_type = ret_type,
    args = args,
    comments = comments or {},
  })
end

function template.decls.struct(struct_name, options, fields, comments)
  assert(type_of(struct_name, "string"), "'struct_name' should be a string")
  assert(array_of(fields, 'FieldDecl'), "'fields' should be an array of FieldDecl")

  if comments then
    assert(array_of(comments, 'string', "'comments' should be an array of strings"))
  end

  return typed("StructDecl", {
    struct_name = struct_name,
    options = options,
    fields = fields,
    comments = comments or {},
  })
end

function template.decls.global_var(var_name, c_var_name, options, var_type, comments)
  assert(type_of(var_name, 'string'), "'var_name' should be a string")
  assert(type_of(c_var_name, 'string'), "'c_var_name' should be a string")
  assert(type_of(var_type, 'string'), "'var_type' should be a string")

  return typed("GlobalVar", {
    var_name = var_name,
    c_var_name = c_var_name,
    var_type = var_type,
    options = options,
    comments = comments or {},
  })
end

function template.decls.type_alias(type_name, options, type_alias, comments)
  assert(type_of(type_name, 'string'), "'type_name' should be a string")
  assert(type_of(type_alias, 'string'), "'type_alias' should be a string")

  return typed("TypeAlias", {
    type_name = type_name,
    type_alias = type_alias,
    options = options,
    comments = comments or {},
  })
end

function template.file(modname, links, headers, enums, structs, funcs, aliases, global_vars)
  assert(type_of(modname, "string"), "'modname' should be a string")
  assert(array_of(links, 'Link'), "'links' should be an array of Link")
  assert(array_of(headers, "Header", "'headers' should be an array of Header"))
  assert(array_of(enums, "EnumDecl"), "'enums' should be an array of EnumDecl")
  assert(array_of(structs, "StructDecl"), "'structs' should be an array of StructDecl")
  assert(array_of(funcs, "FnDecl"), "'funcs' should be an array of FnDecl")
  assert(array_of(aliases, "TypeAlias"), "'aliases' should be an array of TypeAlias")
  assert(array_of(global_vars, "GlobalVar"), "'global_vars' should be an array of GlobalVar")

  return typed('File', {
    modname = modname,
    links = links,
    headers = headers,
    enums = enums,
    structs = structs,
    funcs = funcs,
    aliases = aliases,
    global_vars = global_vars,
  })
end

function template.appliers.operator_overloading(funcs, op_table)
  assert(array_of(funcs, 'FnDecl'), "'funcs' should be an array of FnDecl")
  assert(type_of(op_table, 'table'), "'op_table' should be a table")

  for _, func in ipairs(funcs) do
    local op = op_table[func.fn_name]
    if op then
      func.options.is_operator = op
    end
  end
end

return template