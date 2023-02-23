local template = require 'bindgen.template'
local struct, field, fn = template.decls.struct,
                          template.decls.field,
                          template.decls.fn

return template.file(
  -- modname
  'Rect',
  -- links
  { template.build.link 'nene' },
  -- headers
  { template.build.header 'nene/math/rect.h', template.build.header '<SDL2/SDL.h>' },
  -- structs
  {
    struct('Rect', {}, 'nene_Rect', {
      field('pos', {}, 'nene_Vec2i'),
      field('size', {}, 'nene_Vec2i'),
    }),
    struct('RectIntersection', {}, 'nene_Rect_intersection_result', {
      field('intersected', {}, 'bool'),
      field('intersection', {}, 'nene_Rect'),
    }),
    struct('RectCollision', {}, 'nene_Rect_collision_result', {
      field('collided', {}, 'bool'),
      field('rectangle_resolved', {}, 'nene_Rect'),
      field('intersection', {}, 'nene_Rect'),
    }),
  },
  -- funcs
  {
    fn('zero', {}, 'nene_Rect_zero', 'nene_Rect', {}),
    fn('to_raw', {}, 'nene_Rect_to_raw', 'SDL_Rect', {
      field('rect', {}, 'nene_Rect'),
    }),
    fn('equals', { is_operator = '==' }, 'nene_Rect_equals', 'bool', {
      field('a', {}, 'nene_Rect'),
      field('b', {}, 'nene_Rect'),
    }),
    fn('with_pos', {}, 'nene_Rect_with_pos', 'nene_Rect', {
      field('rect', {}, 'nene_Rect'), 
      field('pos', {}, 'nene_Vec2i'), 
    }),
    fn('add_pos', {}, 'nene_Rect_add_pos', 'nene_Rect', {
      field('rect', {}, 'nene_Rect'), 
      field('pos', {}, 'nene_Vec2i'), 
    }),
    fn('with_size', {}, 'nene_Rect_with_size', 'nene_Rect', {
      field('rect', {}, 'nene_Rect'), 
      field('size', {}, 'nene_Vec2i'), 
    }),
    fn('add_size', {}, 'nene_Rect_add_size', 'nene_Rect', {
      field('rect', {}, 'nene_Rect'), 
      field('size', {}, 'nene_Vec2i'), 
    }),
    fn('is_rect_intersecting', {}, 'nene_Rect_is_rect_intersecting', 'bool', {
      field('a', {}, 'nene_Rect'), 
      field('b', {}, 'nene_Rect'), 
    }),
    fn('is_point_intersecting', {}, 'nene_Rect_is_point_intersecting', 'bool', {
      field('rect', {}, 'nene_Rect'), 
      field('point', {}, 'nene_Vec2i'), 
    }),
    fn('get_intersection', {}, 'nene_Rect_get_intersection', 'nene_Rect_intersection_result', {
      field('a', {}, 'nene_Rect'), 
      field('b', {}, 'nene_Rect'), 
    }),
    fn('get_center', {}, 'nene_Rect_get_center', 'nene_Vec2i', {
      field('rect', {}, 'nene_Rect'),
    }),
    fn('simple_collision', {}, 'nene_Rect_simple_collision', 'nene_Rect_collision_result', {
      field('rect', {}, 'nene_Rect'), 
      field('intersected_rect', {}, 'nene_Rect'), 
    }),
  }
)