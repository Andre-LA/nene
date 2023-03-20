local utils = require 'bindgen.utils'
local template = require 'bindgen.template'
local struct, field, fn = template.decls.struct,
                          template.decls.field,
                          template.decls.fn
local ast_reader = require 'bindgen.ast-reader'

local symbols = ast_reader.read_file('build/ast_dumps/intersections.txt', 'nene_IntersectionRectWithRect')

local structs = ast_reader.get_structs(symbols, 'nene')

local funcs = utils.table.imerge(
  ast_reader.get_functions(symbols, 'nene_Intersections'),
  ast_reader.get_functions(symbols, 'nene_IntersectionRectWithRect'),
  ast_reader.get_functions(symbols, 'nene_IntersectionSegmentWithRect'),
  ast_reader.get_functions(symbols, 'nene_IntersectionSegmentWithSegment')
)

return template.file(
  -- modname
  'Intersections',
  -- links,
  { template.build.link 'nene' },
  -- headers
  { template.build.header 'nene/intersections.h' },
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
