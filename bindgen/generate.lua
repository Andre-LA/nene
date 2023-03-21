--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

--[[ nelua ]]--
local nelua = require 'bindgen.generators.nelua'

local neluagen = nelua.gen.new({
  ['nene_Core'] = 'Core',
  ['nene_GamepadState'] = 'GamepadState',
  ['nene_Color'] = 'Color',
  ['nene_Vec2i'] = 'Vec2i',
  ['nene_Vec2']  = 'Vec2',
  ['nene_Rect'] = 'Rect',
  ['nene_Grid'] = 'Grid',
  ['nene_Segment'] = 'Segment',
  ['nene_Shape'] = 'Shape',
  ['nene_ShapeQuadrilateral'] = 'ShapeQuadrilateral',
  ['nene_Animation'] = 'Animation',
  ['nene_Animation_Property'] = 'AnimationProperty',
  ['nene_Intersections'] = 'Intersections',
  ['nene_IntersectionRectWithRect'] = 'RectWithRect',
  ['nene_IntersectionSegmentWithRect'] = 'SegmentWithRect',
  ['nene_IntersectionSegmentWithSegment'] = 'SegmentWithSegment',
  ['nene_Collision'] = 'Collision',
  ['nene_Texture'] = 'Texture',
  ['nene_TextureCreation'] = 'TextureCreation',
  ['nene_Font'] = 'Font',
  ['nene_TextQuality'] = 'TextQuality',
  ['NENE_TEXT_QUALITY_SOLID'] = 'Solid',
  ['NENE_TEXT_QUALITY_BLENDED'] = 'Blended',
  ['nene_FontCreation'] = 'FontCreation',
  ['nene_GlyphMetrics'] = 'GlyphMetrics',
  ['nene_GlyphMetricsQuery'] = 'GlyphMetricsQuery',
  ['nene_TextDimensions'] = 'TextDimensions',
  ['nene_TextureAtlas'] = 'TextureAtlas',
  ['nene_TextureAtlasCreation'] = 'TextureAtlasCreation',
  ['nene_Tilemap'] = 'Tilemap',
  ['nene_Music'] = 'Music',
  ['nene_MusicCreation'] = 'MusicCreation',
  ['nene_Sound'] = 'Sound',
  ['nene_SoundCreation'] = 'SoundCreation',
})

local function bind_file(src, extracontext)
  local lib = require ('bindgen/data/' .. src)
  local binding = neluagen:file(lib, extracontext)

  local outpath = 'bindings/nelua/nene/' .. src .. '.nelua'
  local outfile = io.open(outpath, 'w')

  if outfile then
    print('writing binding: ' .. outpath)
    outfile:write(binding)
    outfile:close()
  end
end

-- Core
bind_file('core', {
  dependencies = {
    { path = 'nene.raw.sdl2' },
    { path = 'nene.raw.sdl2_ttf' },
    { path = 'nene.raw.sdl2_image' },
    { path = 'nene.raw.sdl2_mixer' },
    { modname = 'Color', path = 'nene.color' },
    { modname = 'Rect', path = 'nene.math.rect' },
    { modname = 'Vec2', path = 'nene.math.vec2' },
    { modname = 'Vec2i', path = 'nene.math.vec2i' },
  }
})

-- Texture
bind_file('texture', {
  dependencies = {
    { modname = 'Vec2', path = 'nene.math.vec2' },
    { modname = 'Rect', path = 'nene.math.rect' },
    { modname = 'Color', path = 'nene.color' },
  },
  privatize = {
    functions = {
      ['load'] = true,
      ['create'] = true,
      ['create_with_access'] = true,
    }
  },
  append = [[
local Texture.Creation = @TextureCreation

function Texture.load(filepath: cstring): (boolean, Texture)
  local texture_creation: TextureCreation = Texture_load(filepath)
  return texture_creation.created, texture_creation.texture
end

function Texture.create(width: uint16, height: uint16): (boolean, Texture)
  local texture_creation: TextureCreation = Texture_create(width, height)
  return texture_creation.created, texture_creation.texture
end

function Texture.create_with_access(width: uint16, height: uint16, access: SDL_TextureAccess): (boolean, Texture)
  local texture_creation: TextureCreation = Texture_create_with_access(width, height, access)
  return texture_creation.created, texture_creation.texture
end

function Texture:__close()
  self:destroy()
end
]]
})

-- Font
bind_file('font', {
  dependencies = {
    { path = 'nene.raw.sdl2_ttf' },
    { modname = 'Vec2i', path = 'nene.math.vec2i' },
    { modname = 'Texture', path = 'nene.texture' },
    { modname = 'Color', path = 'nene.color' },
  },
  privatize = {
    functions = {
      ['load'] = true,
      ['render'] = true,
    }
  },
  prepend = [[
local TextureCreation = @Texture.Creation
]],
  append = [[
local TextureCreation = @Texture.Creation
local Font.Creation = @FontCreation
local Font.GlyphMetrics = @GlyphMetrics
local Font.GlyphMetricsQuery = @GlyphMetricsQuery
local Font.TextDimensions = @TextDimensions
local Font.TextQuality = @TextQuality

function Font.load(filepath: cstring, pt_size: int16): (boolean, Font)
  local font_creation = Font_load(filepath, pt_size)
  return font_creation.created, font_creation.font
end

function Font.render(font: Font, text: cstring, quality: TextQuality, color: Color, wrap_length: uint32): (boolean, Texture)
  local texture_creation: TextureCreation = Font_render(font, text, quality, color, wrap_length)
  return texture_creation.created, texture_creation.texture
end

function Font:__close()
  self:destroy()
end
]]
})

-- Music
bind_file('audio/music', {
  dependencies = {
    { path = 'nene.raw.sdl2_mixer' },
  },
  privatize = {
    functions = {
      ['load'] = true,
    }
  },
  append = [[
local Music.Creation = @MusicCreation

function Music.load(filepath: cstring): (boolean, Music)
  local music_creation: MusicCreation = Music_load(filepath)
  return music_creation.created, music_creation.music
end

function Music:__close()
  self:destroy()
end
]]
})

-- Sound
bind_file('audio/sound', {
  dependencies = {
    { path = 'nene.raw.sdl2_mixer' },
  },
  privatize = {
    functions = {
      ['load'] = true,
    }
  },
  append = [[
local Sound.Creation = @SoundCreation

function Sound.load(filepath: cstring): (boolean, Sound)
  local sound_creation: SoundCreation = Sound_load(filepath)
  return sound_creation.created, sound_creation.sound
end

function Sound:__close()
  self:destroy()
end
]]
})

-- Texture Atlas
bind_file('texture_atlas', {
  dependencies = {
    { modname = 'Grid', path = 'nene.math.grid' },
    { modname = 'Texture', path = 'nene.texture' },
    { modname = 'Vec2i', path = 'nene.math.vec2i' },
    { modname = 'Vec2', path = 'nene.math.vec2' },
  },
  privatize = {
    functions = {
      ['load'] = true,
    }
  },
  append = [[
local TextureAtlas.Creation = @TextureAtlasCreation

function TextureAtlas.load(filepath: cstring, width: uint16, grid: Grid): (boolean, TextureAtlas)
  local texture_atlas_creation: TextureAtlasCreation = TextureAtlas_load(filepath, width, grid)
  return texture_atlas_creation.created, texture_atlas_creation.texture_atlas
end

function TextureAtlas:__close()
  self:destroy()
end
]]
})

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

-- Grid
bind_file('math/grid', {
  dependencies = {
    { modname = 'Vec2i', path = 'nene.math.vec2i' },
    { modname = 'Rect', path = 'nene.math.rect' },
  },
})

-- Segment
bind_file('math/segment', {
  dependencies = {
    { modname = 'Vec2', path = 'nene.math.vec2' },
  }
})

-- Shape
bind_file('math/shape', {
  dependencies = {
    { modname = 'Segment', path = 'nene.math.segment' },
    { modname = 'Rect', path = 'nene.math.rect' },
  },
  prepend = [[
local Shape = @record{}
]],
  append = [[
local Shape.Quadrilateral = ShapeQuadrilateral
]]
})

-- Intersections
bind_file('intersections', {
  dependencies = {
    { modname = 'Vec2', path = 'nene.math.vec2' },
    { modname = 'Vec2i', path = 'nene.math.vec2i' },
    { modname = 'Rect', path = 'nene.math.rect' },
    { modname = 'Segment', path = 'nene.math.segment' },
    { modname = 'Shape', path = 'nene.math.shape' },
  },
  prepend = [[
local Intersections = @record{}
]],
  append = [[
local Intersections.RectWithRect = RectWithRect
local Intersections.SegmentWithRect = SegmentWithRect
local Intersections.SegmentWithSegment = SegmentWithSegment
]]
})

-- Collision
bind_file('collision', {
  dependencies = {
    { modname = 'Vec2', path = 'nene.math.vec2' },
    { modname = 'Vec2i', path = 'nene.math.vec2i' },
    { modname = 'Rect', path = 'nene.math.rect' },
    { modname = 'Segment', path = 'nene.math.segment' },
  },
})

-- Animation
bind_file('animation', {})

-- Color
bind_file('color', {
  dependencies = {
    { path = "nene.raw.sdl2" },
  }
})

-- Tilemap
bind_file('tilemap', {
  dependencies = {
    { modname = 'TextureAtlas', path = 'nene.texture_atlas' },
    { modname = 'Vec2i', path = 'nene.math.vec2i' },
    { modname = 'Vec2', path = 'nene.math.vec2' },
    { modname = 'Grid', path = 'nene.math.grid' },
    { path = "nene.raw.sdl2" },
  }
})