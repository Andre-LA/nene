--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast.ast'
local Generator = require 'bindgen.generator'
local NeluaGenerator = require 'bindgen.generators.nelua'

local depmap: Generator.DepMap = {
  ['Vec2i'] = 'nene.math.vec2i',
  ['Texture'] = 'nene.texture',
  ['Color'] = 'nene.color',
}

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
   -- TODO: remove these
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

local neluagen = NeluaGenerator.new(typemap, depmap)

local function bind_file(file: AST.Module, src: string, wrap_options: Generator.WrapOptions)
   local binding = neluagen:module(file, wrap_options)

   local outpath = 'bindings/nelua/nene/'..src..'.nelua'
   local outfile = io.open(outpath, 'w')

   if outfile then
      outfile:write(binding)
      outfile:close()
   end
end

-- core
-- local Core = require 'bindgen.data.core'

-- bind_file(Core, 'core', {
--   prepend = [[
-- -- this contains the bindings for SDL2 and the linking procedures
-- ## linklib 'nene'
-- ## linklib 'm'
-- require 'nene.raw.sdl2'
-- require 'nene.raw.sdl2_image'
-- require 'nene.raw.sdl2_mixer'
-- require 'nene.raw.sdl2_ttf'
-- ]],
--   append = [[
-- local Core.MilliTime: type = @MilliTime 
-- ]]
-- })

--[ Math ]--

-- Vec2i
local Vec2i = require 'bindgen.data.math.vec2i'

bind_file(Vec2i, 'math/vec2i', {})
--   ignore_overloading = {
--     ['*'] = true 
--   },
--   privatize = {
--     ['nene_Vec2i_mul'] = true,
--     ['nene_Vec2i_scale'] = true,
--   },
--   append = [[
-- function Vec2i.__mul(a: overload(float32, Vec2i), b: overload(float32, Vec2i)): Vec2i
--   ## static_assert(not (a.type.is_scalar and b.type.is_scalar), 'A Vec2i multiply needs at least one Vec2i value')
--   ## if a.type == Vec2i.value and b.type == Vec2i.value then -- both are vectors
--     return nene_Vec2i_mul(a, b)
--   ## elseif a.type.is_scalar then -- b is a vector
--     return nene_Vec2i_scale(b, a)
--   ## else
--     return nene_Vec2i_scale(a, b)
--   ## end
-- end
-- ]],
-- })

-- Vec2
-- local Vec2 = require 'bindgen.data.math.vec2'

-- bind_file(Vec2, 'math/vec2', {
--   ignore_overloading = {
--     ['*'] = true 
--   },
--   privatize = {
--     ['nene_Vec2_mul'] = true,
--     ['nene_Vec2_scale'] = true,
--   },
--   append = [[
-- function Vec2.__mul(a: overload(float32, Vec2), b: overload(float32, Vec2)): Vec2
--   ## static_assert(not (a.type.is_scalar and b.type.is_scalar), 'A Vec2 multiply needs at least one Vec2 value')
--   ## if a.type == Vec2.value and b.type == Vec2.value then -- both are vectors
--     return nene_Vec2_mul(a, b)
--   ## elseif a.type.is_scalar then -- b is a vector
--     return nene_Vec2_scale(b, a)
--   ## else
--     return nene_Vec2_scale(a, b)
--   ## end
-- end
-- ]],
-- })

-- Rect
-- local Rect = require 'bindgen.data.math.rect'

-- bind_file(Rect, 'math/rect', {
--   prepend = [[
-- require 'nene.raw.sdl2'
-- ]],
-- })

-- Rectf
-- local Rectf = require 'bindgen.data.math.rectf'

-- bind_file(Rectf, 'math/rectf', {
--   prepend = [[
-- require 'nene.raw.sdl2'
-- ]],
-- })

-- Grid
-- local Grid = require 'bindgen.data.math.grid'

-- bind_file(Grid, 'math/grid', {})

-- Segment
-- local Segment = require 'bindgen.data.math.segment'

-- bind_file(Segment, 'math/segment', {})

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

--[ Resources ]--

-- Texture
-- local Texture = require 'bindgen.data.texture'

-- bind_file(Texture, 'texture', {
--   privatize = {
--     ['nene_Texture_load'] = true,
--     ['nene_Texture_create'] = true,
--     ['nene_Texture_create_with_access'] = true,
--   },
--   prepend = [[
-- require 'nene.raw.sdl2'
-- ]],
--   append = [[
-- local Texture.Creation = @TextureCreation

-- function Texture.load(filepath: cstring): (boolean, Texture)
--   local texture_creation: TextureCreation = nene_Texture_load(filepath)
--   return texture_creation.created, texture_creation.texture
-- end

-- function Texture.create(width: uint16, height: uint16): (boolean, Texture)
--   local texture_creation: TextureCreation = nene_Texture_create(width, height)
--   return texture_creation.created, texture_creation.texture
-- end

-- function Texture.create_with_access(width: uint16, height: uint16, access: SDL_TextureAccess): (boolean, Texture)
--   local texture_creation: TextureCreation = nene_Texture_create_with_access(width, height, access)
--   return texture_creation.created, texture_creation.texture
-- end

-- function Texture:__close()
--   self:destroy()
-- end
-- ]]
-- })

-- Font
local Font = require 'bindgen.data.font'

bind_file(Font, 'font', {})

-- Music
-- local Music = require 'bindgen.data.audio.music'

-- bind_file(Music, 'audio/music', {
--   privatize = {
--     ['nene_Music_load'] = true,
--   },
--   prepend = [[
-- require 'nene.raw.sdl2_mixer'
-- ]],
--   append = [[
-- local Music.Creation: type = @MusicCreation

-- function Music.load(filepath: cstring): (boolean, Music)
--   local music_creation: MusicCreation = nene_Music_load(filepath)
--   return music_creation.created, music_creation.music
-- end

-- function Music:__close()
--   self:destroy()
-- end
-- ]]
-- })

-- Sound
-- local Sound = require 'bindgen.data.audio.sound'

-- bind_file(Sound, 'audio/sound', {
--   privatize = {
--     ['nene_Sound_load'] = true,
--   },
--   prepend = [[
-- require 'nene.raw.sdl2_mixer'
-- ]],
--   append = [[
-- local Sound.Creation: type = @SoundCreation

-- function Sound.load(filepath: cstring): (boolean, Sound)
--   local sound_creation: SoundCreation = nene_Sound_load(filepath)
--   return sound_creation.created, sound_creation.sound
-- end

-- function Sound:__close()
--   self:destroy()
-- end
-- ]]
-- })

-- Texture Atlas
-- local TextureAtlas = require 'bindgen.data.texture_atlas'

-- bind_file(TextureAtlas, 'texture_atlas', {
--   privatize = {
--     ['nene_TextureAtlas_load'] = true,
--   },
--   append = [[
-- local TextureAtlas.Creation: type = @TextureAtlasCreation

-- function TextureAtlas.load(filepath: cstring, width: uint16, grid: Grid): (boolean, TextureAtlas)
--   local texture_atlas_creation: TextureAtlasCreation = nene_TextureAtlas_load(filepath, width, grid)
--   return texture_atlas_creation.created, texture_atlas_creation.texture_atlas
-- end

-- function TextureAtlas:__close()
--   self:destroy()
-- end
-- ]]
-- })

-- Tilemap
-- local Tilemap = require 'bindgen.data.tilemap'

-- bind_file(Tilemap, 'tilemap', {})

--[ Etc ]--
-- Intersections
-- local Intersections = require 'bindgen.data.intersections'

-- bind_file(Intersections, 'intersections', {
--   prepend = [[
-- local Intersections = @record{}
-- ]],
--   append = [[
-- local Intersections.RectfWithRectf: type = @IntersectionRectfWithRectf
-- local Intersections.SegmentWithRectf: type = @IntersectionSegmentWithRectf
-- local Intersections.SegmentWithSegment: type = @IntersectionSegmentWithSegment
-- ]]
-- })

-- Collision
-- local Collision = require 'bindgen.data.collision'

-- bind_file(Collision, 'collision', {})

-- Animation
-- local Animation = require 'bindgen.data.animation'

-- bind_file(Animation, 'animation', {})

-- Color
-- local Color = require 'bindgen.data.color'

-- bind_file(Color, 'color', {
--   prepend = [[
-- require 'nene.raw.sdl2'
-- ]],
-- })
