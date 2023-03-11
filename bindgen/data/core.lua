
local template = require 'bindgen.template'
local struct, field, fn = template.decls.struct,
                          template.decls.field,
                          template.decls.fn
local ast_reader = require 'bindgen.ast-reader'

local symbols = ast_reader.read_file('build/ast_dumps/core.txt', 'nene_GamepadState')

local structs = ast_reader.get_structs(symbols, 'nene')
local funcs = ast_reader.get_functions(symbols, 'nene_Core')
local aliases = ast_reader.get_type_aliases(symbols, 'nene_MilliTime')

return template.file(
  -- modname
  'Core',
  -- links,
  { template.build.link 'nene' },
  -- headers
  { template.build.header 'nene/core.h' },
  -- enums
  {},
  -- structs
  structs,
  -- funcs
  funcs,
  -- aliases
  aliases,
  -- global_vars
  {}
)
