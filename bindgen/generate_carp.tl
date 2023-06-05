--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local Generator = require 'bindgen.generator'
local CarpGenerator = require 'bindgen.generators.carp'

local typemap: {string:string} = {
  ['nene_Core'] = 'Core',
  ['nene_MilliTime'] = 'MilliTime',
  ['nene_GamepadState'] = 'GamepadState',
  ['nene_Color'] = 'Color',
  ['nene_Vec2i'] = 'Vec2i',
  ['nene_Vec2']  = 'Vec2',
  ['nene_Rect'] = 'Rect',
  ['nene_Rectf'] = 'Rectf',
  ['nene_Grid'] = 'Grid',
  ['nene_Segment'] = 'Segment',
  ['nene_Shape'] = 'Shape',
  ['nene_ShapeQuadrilateral'] = 'ShapeQuadrilateral',
  ['nene_Animation'] = 'Animation',
  ['nene_Intersections'] = 'Intersections',
  ['nene_IntersectionRectfWithRectf'] = 'IntersectionRectfWithRectf',
  ['nene_IntersectionSegmentWithRectf'] = 'IntersectionSegmentWithRectf',
  ['nene_IntersectionSegmentWithSegment'] = 'IntersectionSegmentWithSegment',
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
}

local carpgen = CarpGenerator.new(typemap)

local function bind_file(file: Node.File, src: string, wrap_options: Generator.WrapOptions)
   local binding = carpgen:file(file, wrap_options)

   local outpath = 'bindings/carp/nene/'..src..'.carp'
   local outfile = io.open(outpath, 'w')

   if outfile then
      outfile:write(binding)
      outfile:close()
   end
end

-- core
local Core = require 'bindgen.data.core'

bind_file(Core, 'core', {
  prepend = [[
(load "nene/sdl/sdl2.carp")
(load "nene/sdl/sdl2_image.carp")
(load "nene/sdl/sdl2_mixer.carp")
(load "nene/sdl/sdl2_ttf.carp")
]],
})
--[ Math ]--

-- Vec2i
local Vec2i = require 'bindgen.data.math.vec2i'

-- TODO: operator overloading
bind_file(Vec2i, 'math/vec2i', {})

-- Vec2
local Vec2 = require 'bindgen.data.math.vec2'

-- TODO: operator overloading
bind_file(Vec2, 'math/vec2', {})

-- Rect
local Rect = require 'bindgen.data.math.rect'

bind_file(Rect, 'math/rect', {
   prepend = [[
(load "nene/sdl/sdl2.carp")
]]
})

-- Rectf
local Rectf = require 'bindgen.data.math.rectf'

bind_file(Rectf, 'math/rectf', {
   prepend = [[
(load "nene/sdl/sdl2.carp")
]]
})

-- Grid
local Grid = require 'bindgen.data.math.grid'

bind_file(Grid, 'math/grid', {})

-- Segment
local Segment = require 'bindgen.data.math.segment'

bind_file(Segment, 'math/segment', {})

-- Shape
-- local Shape = require 'bindgen.data.math.shape'

-- bind_file(Shape, 'math/shape', {
--   prepend = [[
-- local Shape = @record{}
-- ]],
--   append = [[
-- local Shape.Quadrilateral: type = @ShapeQuadrilateral
-- ]]
-- })

local Texture = require 'bindgen.data.texture'

bind_file(Texture, 'texture', {
   prepend = [[
(load "nene/sdl/sdl2.carp")
]]
})

-- Font
local Font = require 'bindgen.data.font'

bind_file(Font, 'font', {
   prepend = [[
(load "nene/sdl/sdl2_ttf.carp")
]]
})

-- Music
local Music = require 'bindgen.data.audio.music'

bind_file(Music, 'audio/music', {
   prepend = [[
(load "nene/sdl/sdl2_mixer.carp")
]]
})

-- Sound
local Sound = require 'bindgen.data.audio.sound'

bind_file(Sound, 'audio/sound', {
   prepend = [[
(load "nene/sdl/sdl2_mixer.carp")
]]
})
   

-- Texture Atlas
local TextureAtlas = require 'bindgen.data.texture_atlas'

bind_file(TextureAtlas, 'texture_atlas', {})

-- Tilemap
local Tilemap = require 'bindgen.data.tilemap'

bind_file(Tilemap, 'tilemap', {})

--[ Etc ]--
-- Intersections
local Intersections = require 'bindgen.data.intersections'

bind_file(Intersections, 'intersections', {})

-- Collision
local Collision = require 'bindgen.data.collision'

bind_file(Collision, 'collision', {})

-- Animation
local Animation = require 'bindgen.data.animation'

bind_file(Animation, 'animation', {})

-- Color
local Color = require 'bindgen.data.color'

bind_file(Color, 'color', {
   prepend = [[
(load "nene/sdl/sdl2.carp")
]]
})
