local template = require 'bindgen.template'
local struct, field, fn = template.decls.struct,
                          template.decls.field,
                          template.decls.fn
local ast_reader = require 'bindgen.ast-reader'

local symbols = ast_reader.read_file('build/ast_dumps/math/vec2i.txt', 'nene_Vec2i')

local structs = ast_reader.get_structs(symbols, 'nene')
local funcs = ast_reader.get_functions(symbols, 'nene_Vec2i')

template.appliers.operator_overloading(funcs, {
  ['equals'] = '==',
  ['add'] = '+',
  ['sub'] = '-',
  ['mul'] = '*',
  ['scale'] = '*',
  ['negate'] = '-u',
})

return template.file(
  -- modname
  'Vec2i',
  -- links
  { template.build.link 'nene' },
  -- headers
  { template.build.header 'nene/math/vec2i.h' },
  -- enums
  {},
  -- structs
  structs,
  -- funcs
  funcs,
  -- aliases
  {},
  -- global_vars
  {}
)
