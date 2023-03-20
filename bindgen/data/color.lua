local template = require 'bindgen.template'
local struct, field, fn = template.decls.struct,
                          template.decls.field,
                          template.decls.fn
local ast_reader = require 'bindgen.ast-reader'

local symbols = ast_reader.read_file('build/ast_dumps/color.txt', 'nene_Color')

local funcs = ast_reader.get_functions(symbols, 'nene_Color')
local aliases = ast_reader.get_type_aliases(symbols, 'nene_Color')
local global_vars = ast_reader.get_global_vars(symbols, 'nene_Color')

template.appliers.operator_overloading(funcs, {
  ['equals'] = '==',
})

return template.file(
  -- modname
  'Color',
  -- links,
  { template.build.link 'nene' },
  -- headers
  { template.build.header 'nene/color.h' },
  -- enums
  {},
  -- structs
  {},
  -- funcs
  funcs,
  -- aliases
  aliases,
  -- global_vars
  global_vars
)