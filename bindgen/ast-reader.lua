local typed = require 'bindgen.typed'
local type_of, array_of = typed.type_of, typed.array_of

local template = require 'bindgen.template'

local ast_reader = {}

local function no_repeat(arr, value)
  for _, v in ipairs(arr) do
    if v == value then
      return false
    end
  end
  return true
end

-- produces a simple and generic AST
function ast_reader.read_file(filepath, modname, first_expected_symbol)
  first_expected_symbol = first_expected_symbol or modname
  
  assert(type_of(filepath, 'string'), "'filepath' should be a string")
  assert(type_of(modname, 'string'), "'modname' should be a string")
  assert(type_of(first_expected_symbol, 'string'), "'first_expected_symbol' should be a string")

  local dumping = ''

  --[ symbols ]--
  local symbols = {}

  local function new_symbol(name)
    return {
      type = '',
      symtype = '',
      name = name,
      fields = {},
      comments = {}
    }
  end

  local function get_last_symbol()
    return symbols[#symbols] or new_symbol('')
  end

  local function push_symbol(name)
    if symbols[name] then
      return
    end

    symbols[name] = new_symbol(name)
  
    table.insert(symbols, symbols[name])
  end

  local function push_sym_field(fname, ftype)
    local sym = get_last_symbol()
    sym.fields[fname] = {
      name = fname,
      type = ftype,
      constant = nil, -- field for enum constants
    }
    table.insert(sym.fields, sym.fields[fname])
  end

  local function set_sym_field_constant(value)
    local sym = get_last_symbol()
    local last_field = sym.fields[#sym.fields]
    last_field.constant = value
  end
  
  local function push_sym_comment(text)
    local sym = get_last_symbol()
    if no_repeat(sym.comments, text) then
      table.insert(sym.comments, text)
    end
  end

  local function push_paragraph_comment()
    local sym = get_last_symbol()
    if #sym.comments > 0 then
      table.insert(sym.comments, '')
    end
  end

  local function symbol_set_type(type)
    local sym = get_last_symbol()
    sym.type = type
  end

  local function symbol_set_symtype(symtype)
    local sym = get_last_symbol()
    sym.symtype = symtype
  end
  
  --[ readers ]--
  local readers = {}

  function readers.EnumDecl(line)
    local symbol_name = line:match('EnumDecl %w+ <.-> line:%d+:%d+ ([%w+_]+)')
    push_symbol(symbol_name)
    symbol_set_type('Enum')
  end
  
  function readers.EnumConstantDecl(line)
    local enum_const_name, enum_const_type = line:match("EnumConstantDecl %w+ <.-> col:%d+ ([%w_]+) '([%w_]+)'")
    push_sym_field(enum_const_name, enum_const_type)
  end

  function readers.IntegerLiteral(line)
    local value = line:match("IntegerLiteral %w+ <.-> '[%w_]+' (%d+)")
    set_sym_field_constant(value)
  end

  function readers.RecordDecl(line)
    local symbol_name = line:match('RecordDecl %w+ <.-> line:%d+:%d+ struct ([%w_]+)')
    push_symbol(symbol_name)
    symbol_set_type('Record')
  end

  function readers.VarDecl(line)
    local var_name, var_type = line:match("VarDecl %w+ <.-> col:%d+ ([%w_]+) 'const ([%w_]+)'")
    push_symbol(var_name)
    symbol_set_type('GlobalVar')
    symbol_set_symtype(var_type)
  end

  function readers.FieldDecl(line)
    local field_name, field_type = line:match("FieldDecl %w+ <.-> col:%d+ ([%w_]+) '([%w_]+)'")
    push_sym_field(field_name, field_type)
  end

  function readers.FunctionDecl(line)
    local symbol_name, sym_type = line:match("FunctionDecl %w+ <.-> col:%d+ ([%w_]+) '([%w_]+) ")
    push_symbol(symbol_name)
    symbol_set_type('Function')
    symbol_set_symtype(sym_type)
  end

  function readers.ParmVarDecl(line)
    local param_name, param_type = line:match("ParmVarDecl %w+ <.-> col:%d+ ([%w_]+) '([%w_]+)'")
    push_sym_field(param_name, param_type)
  end

  function readers.TextComment(line)
    local text = line:match('TextComment %w+ <.-> Text="%s*([^\n]+)')
    text = text:sub(1, -2)
    push_sym_comment(text)
  end

  function readers.ParagraphComment(line)
    push_paragraph_comment()
  end

  function readers.TypedefDecl(line)
    local alias_name, alias_type = line:match("TypedefDecl %w+ <.-> col:%d+ referenced ([%w_]+) '([%w_]+)'")
    push_symbol(alias_name)
    symbol_set_type('TypeAlias')
    symbol_set_symtype(alias_type)
  end

  local unlocked = false

  local skip_dump = false
  
  -- file reading
  for line in io.lines(filepath) do
    local now_dumping = line:match('Dumping ([%w_]+)')

    -- sadly, ast-dumps creates duplicates on typedefs, thus we need to be sure we
    -- aren't reading duplicating data
    if now_dumping == dumping then
      skip_dump = true
      goto continue
    elseif now_dumping then
      dumping = now_dumping
      skip_dump = false
    end

    -- skip duplicated data dump (generally typedef)
    if skip_dump then
      goto continue
    end
    
    -- check for the first dumping of the first expected symbol, that's necessary because ast dumps
    -- also dumps all the dependencies, thus we need to ignore them before parsing the dump.
    if not unlocked then
      if dumping == first_expected_symbol then
        unlocked = true
      end
      goto continue
    end
    
    -- remove initial noise of the hierarchy (like "  `-" from "  `-RecordType")
    line = line:gsub('^(%A*)(.*)', '%2')
    
    local ast_node_name = line:match('(%w+)')

    -- run the matching AST node reader
    if readers[ast_node_name] then
      readers[ast_node_name](line)
    end

    ::continue::
  end

  return symbols
end

function ast_reader.get_symbol_fields(symbol)
  local params = {}

  for _, field in ipairs(symbol.fields) do
    table.insert(params, template.decls.field(
      field.name,
      {},
      field.type,
      field.constant
    ))
  end

  assert(array_of(params, 'FieldDecl'), "something go wrong, 'params' isn't an array of 'FieldDecl'")
  return params
end

function ast_reader.get_symbol_func(symbol, prefix)
 return template.decls.fn(
    symbol.name:gsub(prefix..'_', ''), 
    {},
    symbol.name,
    symbol.symtype,
    ast_reader.get_symbol_fields(symbol),
    symbol.comments
  )
end

function ast_reader.get_symbol_struct(symbol, prefix)
  return template.decls.struct(
    symbol.name,
    {},
    ast_reader.get_symbol_fields(symbol),
    symbol.comments
  )
end

function ast_reader.get_symbol_enum(symbol, prefix)
  return template.decls.enum(
    symbol.name,
    {},
    ast_reader.get_symbol_fields(symbol),
    symbol.comments
  )
end

function ast_reader.get_symbol_type_alias(symbol, prefix)
  return template.decls.type_alias(
    symbol.name,
    { is_const = true },
    symbol.symtype,
    symbol.comments
  )
end

function ast_reader.get_symbol_global_var(symbol, prefix)
  return template.decls.global_var(
    symbol.name:gsub(prefix..'_', ''),
    symbol.name,
    {},
    symbol.symtype,
    symbol.comments
  )
end

-- get all functions from symbols and returns them all as template.decls.fn tables
function ast_reader.get_functions(symbols, prefix)
  local functions = {}
  
  for _, symbol in ipairs(symbols) do
    if symbol.type == 'Function' then
      table.insert(functions, ast_reader.get_symbol_func(symbol, prefix))
    end
  end

  assert(array_of(functions, 'FnDecl'), "something go wrong, 'functions' isn't an array of 'FnDecl'.")
  return functions
end

-- get all structs from symbols and returns them all as template.decls.struct tables
function ast_reader.get_structs(symbols, prefix)
  local structs = {}

  for _, symbol in ipairs(symbols) do
    if symbol.type == 'Record' then
      table.insert(structs, ast_reader.get_symbol_struct(symbol, prefix))
    end
  end

  assert(array_of(structs, 'StructDecl'), "something go wrong, 'structs' isn't an array of 'StructDecl'")
  return structs
end

-- get all enums from symbols and returns them all as template.decls.enum tables
function ast_reader.get_enums(symbols, prefix)
  local enums = {}

  for _, symbol in ipairs(symbols) do
    if symbol.type == 'Enum' then
      table.insert(enums, ast_reader.get_symbol_enum(symbol, prefix))
    end
  end

  assert(array_of(enums, 'EnumDecl'), "something go wrong, 'enums' isn't an array of 'EnumDecl'")
  return enums
end

-- get all type aliases symbols and returns them all as template.decls.type_alias tables
function ast_reader.get_type_aliases(symbols, prefix)
  local type_aliases = {}

  for _, symbol in ipairs(symbols) do
    if symbol.type == 'TypeAlias' then
      table.insert(type_aliases, ast_reader.get_symbol_type_alias(symbol, prefix))
    end
  end

  assert(array_of(type_aliases, 'TypeAlias'), "something go wrong, 'type_aliases' isn't an array of 'TypeAlias'")
  return type_aliases
end

-- get all global variables symbols and returns them all as template.decls.global_var tables
function ast_reader.get_global_vars(symbols, prefix)
  local global_vars = {}

  for _, symbol in ipairs(symbols) do
    if symbol.type == 'GlobalVar' then
      table.insert(global_vars, ast_reader.get_symbol_global_var(symbol, prefix))
    end
  end

  assert(array_of(global_vars, 'GlobalVar'), "something go wrong, 'global_vars' isn't an array of 'GlobalVar'")
  return global_vars
end

return ast_reader
