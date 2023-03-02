--[[ nelua ]]--
local nelua = require 'bindgen.generators.nelua'

local neluagen = nelua.gen.new({
  ['nene_Color'] = 'Color',
  ['nene_Vec2i'] = 'Vec2i',
  ['nene_Vec2']  = 'Vec2',
  ['nene_Rect'] = 'Rect',
  ['nene_Animation'] = 'Animation',
  ['nene_Animation_Property'] = 'AnimationProperty',
  ['nene_Intersections'] = 'Intersections',
  ['nene_Intersections_rect_intersection'] = 'RectIntersection',
  ['nene_Intersections_rect_collision'] = 'RectCollision',
})

local function bind_file(src, extracontext)
  local lib = require ('bindgen/data/' .. src)
  local binding = neluagen:file(lib, extracontext)

  local outfile = io.open('bindings/nelua/nene/' .. src .. '.nelua', 'w')

  if outfile then
    outfile:write(binding)
    outfile:close()
  end
end

-- Vec2i
bind_file('math/vec2i', {
  ignore_overloading = {
    ['*'] = true 
  },
  privatize = {
    functions = {
      ['mul'] = true,
      ['scale'] = true,
    }
  },
  append = [[
function Vec2i.__mul(a: overload(float32, Vec2i), b: overload(float32, Vec2i)): Vec2i
  ## static_assert(not (a.type.is_scalar and b.type.is_scalar), 'A Vec2i multiply needs at least one Vec2i value')
  ## if a.type == Vec2i.value and b.type == Vec2i.value then -- both are vectors
    return Vec2i_mul(a, b)
  ## elseif a.type.is_scalar then -- b is a vector
    return Vec2i_scale(b, a)
  ## else
    return Vec2i_scale(a, b)
  ## end
end
]],
})

-- Vec2
bind_file('math/vec2', {
  dependencies = {
    { modname = "Vec2i", path = "nene.math.vec2i" },
  },
  ignore_overloading = {
    ['*'] = true 
  },
  privatize = {
    functions = {
      ['mul'] = true,
      ['scale'] = true,
    }
  },
  append = [[
function Vec2.__mul(a: overload(float32, Vec2), b: overload(float32, Vec2)): Vec2
  ## static_assert(not (a.type.is_scalar and b.type.is_scalar), 'A Vec2 multiply needs at least one Vec2 value')
  ## if a.type == Vec2.value and b.type == Vec2.value then -- both are vectors
    return Vec2_mul(a, b)
  ## elseif a.type.is_scalar then -- b is a vector
    return Vec2_scale(b, a)
  ## else
    return Vec2_scale(a, b)
  ## end
end
]],
})

-- Rect
bind_file('math/rect', {
  dependencies = {
    { modname = 'Vec2i', path = 'nene.math.vec2i' },
    { path = 'nene.raw.sdl2' }
  },
})

-- Intersections
bind_file('intersections', {
  dependencies = {
    { modname = 'Vec2i', path = 'nene.math.vec2i' },
    { modname = 'Rect', path = 'nene.math.rect' },
  },
  prepend = [[
local Intersections = @record{}
]]
})

-- Animation
bind_file('animation', {})

-- Color
bind_file('color', {
  dependencies = {
    { path = "nene.raw.sdl2" },
  }
})