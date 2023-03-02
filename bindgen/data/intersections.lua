local utils = require 'bindgen.utils'
local template = require 'bindgen.template'
local struct, field, fn = template.decls.struct,
                          template.decls.field,
                          template.decls.fn
local ast_reader = require 'bindgen.ast-reader'

local symbols = utils.table.no_repeat(
  utils.table.imerge(
    ast_reader.read_file('build/ast_dumps/intersections.txt', 'nene_Intersections_rect_intersection'),
    ast_reader.read_file('build/ast_dumps/intersections.txt', 'nene_Intersections_rect_collision')
  ),
  function(v) return v.name end
)

local structs = ast_reader.get_structs(symbols, 'nene')
local funcs = ast_reader.get_functions(symbols, 'nene_Intersections')

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
