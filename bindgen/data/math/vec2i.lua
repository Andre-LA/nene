local template = require 'bindgen.template'
local struct, field, fn = template.decls.struct,
                          template.decls.field,
                          template.decls.fn

return template.file(
  -- modname
  'Vec2i',
  -- links
  { template.build.link 'nene' },
  -- headers
  { template.build.header 'nene/math/vec2i.h' },
  -- structs
  {
    struct('Vec2i', {}, 'nene_Vec2i', {
        field('x', {}, 'int32_t'),
        field('y', {}, 'int32_t'),
    }),
  },
  -- funcs
  {
    fn('zero', {}, 'nene_Vec2i_zero', 'nene_Vec2i', {}),
    fn('one', {}, 'nene_Vec2i_one', 'nene_Vec2i', {}),
    fn('equals', { is_operator = '==' }, 'nene_Vec2i_equals', 'bool', {
      field('a', {}, 'nene_Vec2i'),
      field('b', {}, 'nene_Vec2i'),
    }),
    fn('add', { is_operator = '+' }, 'nene_Vec2i_add', 'nene_Vec2i', {
      field('a', {}, 'nene_Vec2i'),
      field('b', {}, 'nene_Vec2i'),
    }),
    fn('sub', { is_operator = '-' }, 'nene_Vec2i_sub', 'nene_Vec2i', {
      field('a', {}, 'nene_Vec2i'),
      field('b', {}, 'nene_Vec2i'),
    }),
    fn('mul', { is_operator = '*' }, 'nene_Vec2i_mul', 'nene_Vec2i', {
      field('a', {}, 'nene_Vec2i'),
      field('b', {}, 'nene_Vec2i'),
    }),
    fn('scale', { is_operator = '*' }, 'nene_Vec2i_scale', 'nene_Vec2i', {
      field('a', {}, 'nene_Vec2i'),
      field('s', {}, 'float'),
    }),
    fn('negate', { is_operator = '-u' }, 'nene_Vec2i_negate', 'nene_Vec2i', {
      field('v', {}, 'nene_Vec2i')
    }),
    fn('len_sqr', {}, 'nene_Vec2i_len_sqr', 'float', {
      field('v', {}, 'nene_Vec2i')
    }),
    fn('len', {}, 'nene_Vec2i_len', 'float', {
      field('v', {}, 'nene_Vec2i')
    }),
    fn('lerp', {}, 'nene_Vec2i_lerp', 'nene_Vec2i', {
      field('a', {}, 'nene_Vec2i'),
      field('b', {}, 'nene_Vec2i'),
      field('t', {}, 'float'),
    }),
    fn('dot', {}, 'nene_Vec2i_dot', 'float', {
      field('a', {}, 'nene_Vec2i'),
      field('b', {}, 'nene_Vec2i'),
    }),
    fn('cross', {}, 'nene_Vec2i_cross', 'float', {
      field('a', {}, 'nene_Vec2i'),
      field('b', {}, 'nene_Vec2i'),
    }),
  } 
)
