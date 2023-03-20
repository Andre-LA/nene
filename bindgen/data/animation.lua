local template = require 'bindgen.template'
local struct, field, fn = template.decls.struct,
                          template.decls.field,
                          template.decls.fn
local ast_reader = require 'bindgen.ast-reader'

local symbols = ast_reader.read_file('build/ast_dumps/animation.txt', 'nene_Animation')

local enums = ast_reader.get_enums(symbols, 'nene')
local structs = ast_reader.get_structs(symbols, 'nene')
local funcs = ast_reader.get_functions(symbols, 'nene_Animation')

template.appliers.operator_overloading(funcs, {
  ['equals'] = '==',
})

return template.file(
  -- modname
  'Animation',
  -- links,
  { template.build.link 'nene' },
  -- headers
  { template.build.header 'nene/animation.h' },
  -- enums
  enums,
  -- structs
  structs,
  -- funcs
  funcs,
  -- aliases
  {},
  -- global_vars
  {}
)