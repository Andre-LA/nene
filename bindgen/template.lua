local typed = require 'bindgen.typed'
local type_of, array_of, array_of_decls = typed.type_of, typed.array_of, typed.array_of_decls

local template = {}

template.build = {}
template.decls = {}

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

function template.decls.field(field_name, options, ctype)
  assert(type_of(field_name, "string"), "'field_name' should be a string")
  assert(type_of(ctype, "string"), "'ctype' should be a string")
  
  return typed('FieldDecl', {
    field_name = field_name,
    options = options,
    ctype = ctype,
  })
end

function template.decls.fn(fn_name, options, c_fn_name, ret_type, args)
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
  })
end

function template.decls.struct(struct_name, options, c_struct_name, fields)
  assert(type_of(struct_name, "string"), "'struct_name' should be a string")
  assert(type_of(c_struct_name, "string"), "'c_struct_name' should be a string")
  assert(array_of(fields, 'FieldDecl'), "'fields' should be an array of FieldDecl")

  return typed("StructDecl", {
    struct_name = struct_name,
    options = options,
    c_struct_name = c_struct_name,
    fields = fields,
  })
end

function template.file(modname, links, headers, structs, funcs)
  assert(type_of(modname, "string"), "'modname' should be a string")
  assert(array_of(links, 'Link'), "'links' should be an array of Link")
  assert(array_of(headers, "Header", "'headers' should be an array of Header"))
  assert(array_of(structs, "StructDecl"), "'structs' should be an array of StructDecl")
  assert(array_of(funcs, "FnDecl"), "'funcs' should be an array of FnDecl")

  return typed('File', {
    modname = modname,
    links = links,
    headers = headers,
    structs = structs,
    funcs = funcs,
  })
end

function template.new(langname, files)
  assert(type_of(langname, "string"), "langname should be a string") 
  assert(array_of(files, 'File'), "'files' should be an array of File")

  return {
    langname = langname,
    files = files,
  }  
end

return template