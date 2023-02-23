local template = require 'bindgen.template'
local struct, field, fn = template.decls.struct,
                          template.decls.field,
                          template.decls.fn

return template.file(
  -- modname
  'Vec2',
  -- links,
  { template.build.link 'nene' },
  -- headers
  { template.build.header 'nene/math/vec2.h' },
  -- structs
  {
    struct('Vec2', {}, 'nene_Vec2', {
      field('x', {}, 'float'),
      field('y', {}, 'float'),
    }),
  },
  -- funcs
  {
    fn('from_Vec2i', {}, 'nene_Vec2_from_Vec2i', 'nene_Vec2', {
      field('v', {}, 'nene_Vec2i'),
    }),
    fn('to_Vec2i', {}, 'nene_Vec2_to_Vec2i', 'nene_Vec2i', {
      field('v', {}, 'nene_Vec2'),
    }),
    fn('zero', {}, 'nene_Vec2_zero', 'nene_Vec2', {}),
    fn('one', {}, 'nene_Vec2_one', 'nene_Vec2', {}),
    fn('equals', { is_operator = '==' }, 'nene_Vec2_equals', 'bool', {
      field('a', {}, 'nene_Vec2'),
      field('b', {}, 'nene_Vec2'),
    }),
    fn('add', { is_operator = '+' }, 'nene_Vec2_add', 'nene_Vec2', {
      field('a', {}, 'nene_Vec2'),
      field('b', {}, 'nene_Vec2'),
    }),
    fn('sub', { is_operator = '-' }, 'nene_Vec2_sub', 'nene_Vec2', {
      field('a', {}, 'nene_Vec2'),
      field('b', {}, 'nene_Vec2'),
    }),
    fn('mul', { is_operator = '*' }, 'nene_Vec2_mul', 'nene_Vec2', {
      field('a', {}, 'nene_Vec2'),
      field('b', {}, 'nene_Vec2'),
    }),
    fn('scale', { is_operator = '*' }, 'nene_Vec2_scale', 'nene_Vec2', {
      field('a', {}, 'nene_Vec2'),
      field('s', {}, 'float'),
    }),
    fn('negate', { is_operator = '-u' }, 'nene_Vec2_negate', 'nene_Vec2', {
      field('v', {}, 'nene_Vec2'),
    }),
    fn('len_sqr', {}, 'nene_Vec2_len_sqr', 'float', {
      field('v', {}, 'nene_Vec2'),
    }),
    fn('len', {}, 'nene_Vec2_len', 'float', {
      field('v', {}, 'nene_Vec2'),
    }),
    fn('lerp', {}, 'nene_Vec2_lerp', 'nene_Vec2', {
      field('a', {}, 'nene_Vec2'),
      field('b', {}, 'nene_Vec2'),
      field('t', {}, 'float'),
    }),
    fn('normalize', {}, 'nene_Vec2_normalize', 'nene_Vec2', {
      field('v', {}, 'nene_Vec2'),
    }),
    fn('dot', {}, 'nene_Vec2_dot', 'float', {
      field('a', {}, 'nene_Vec2'),
      field('b', {}, 'nene_Vec2'),
    }),
    fn('cross', {}, 'nene_Vec2_cross', 'float', {
      field('a', {}, 'nene_Vec2'),
      field('b', {}, 'nene_Vec2'),
    }),
  }
)
