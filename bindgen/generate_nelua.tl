--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast'
local Generator = require 'bindgen.generator'
local NeluaGenerator = require 'bindgen.generators.nelua'

local depmap: Generator.DepMap = {
	['Core'] = 'nene.core',
	['Texture'] = 'nene.texture',
	['Font'] = 'nene.font',
	['TextureAtlas'] = 'nene.texture_atlas',
	['Music'] = 'nene.audio.music',
	['Sound'] = 'nene.audio.sound',
	['Vec2i'] = 'nene.math.vec2i',
	['Vec2'] = 'nene.math.vec2',
	['Rect'] = 'nene.math.rect',
	['Rectf'] = 'nene.math.rectf',
	['Grid'] = 'nene.math.grid',
	['Segment'] = 'nene.math.segment',
	['Shape'] = 'nene.math.shape',
	['Intersections'] = 'nene.intersections',
	['Collision'] = 'nene.collision',
	['Animation'] = 'nene.animation',
	['Tilemap'] = 'nene.tilemap',
	['Color'] = 'nene.color',
}

local neluagen = NeluaGenerator.new(depmap)

local function bind_module(module: AST.Module, src: string, wrap_options: Generator.WrapOptions)
	local binding = neluagen:module(module, wrap_options)

	local outpath = 'bindings/nelua/nene/'..src..'.nelua'
	local outfile = io.open(outpath, 'w')

	if outfile then
		outfile:write(binding)
		outfile:close()
	end
end

-- core
local Core = require 'bindgen.data.core'

bind_module(Core, 'core', {
	begin_prepend = [[
-- this contains the bindings for SDL2 and the linking procedures
## linklib 'nene'
## linklib 'm'

## cinclude 'nene/core.h'
## cinclude 'nene/config.h'
## cinclude 'nene/texture.h'
## cinclude 'nene/font.h'
## cinclude 'nene/texture_atlas.h'
## cinclude 'nene/audio/music.h'
## cinclude 'nene/audio/sound.h'
## cinclude 'nene/math/vec2i.h'
## cinclude 'nene/math/vec2.h'
## cinclude 'nene/math/rect.h'
## cinclude 'nene/math/rectf.h'
## cinclude 'nene/math/grid.h'
## cinclude 'nene/math/segment.h'
## cinclude 'nene/math/shape.h'
## cinclude 'nene/intersections.h'
## cinclude 'nene/collision.h'
## cinclude 'nene/animation.h'
## cinclude 'nene/tilemap.h'
## cinclude 'nene/color.h'

require 'nene.raw.sdl2'
require 'nene.raw.sdl2_image'
require 'nene.raw.sdl2_mixer'
require 'nene.raw.sdl2_ttf'

local MilliTime: type = @uint64
]],
	append = [[
local Core.MilliTime: type = @MilliTime 
]]
})

--[ Math ]--

-- Vec2i
local Vec2i = require 'bindgen.data.math.vec2i'
bind_module(Vec2i, 'math/vec2i', {
	append = [[
function Vec2i.__mul(a: overload(float32, Vec2i), b: overload(float32, Vec2i)): Vec2i
	## static_assert(not (a.type.is_scalar and b.type.is_scalar), 'A Vec2i multiply needs at least one Vec2i value')
	## if a.type == Vec2i.value and b.type == Vec2i.value then -- both are vectors
		return nene_Vec2i_mul(a, b)
	## elseif a.type.is_scalar then -- b is a vector
		return nene_Vec2i_scale(b, a)
	## else
		return nene_Vec2i_scale(a, b)
	## end
end
]]
})

-- Vec2
local Vec2 = require 'bindgen.data.math.vec2'
bind_module(Vec2, 'math/vec2', {
	append = [[
function Vec2.__mul(a: overload(float32, Vec2), b: overload(float32, Vec2)): Vec2
	## static_assert(not (a.type.is_scalar and b.type.is_scalar), 'A Vec2 multiply needs at least one Vec2 value')
	## if a.type == Vec2.value and b.type == Vec2.value then -- both are vectors
		return nene_Vec2_mul(a, b)
	## elseif a.type.is_scalar then -- b is a vector
		return nene_Vec2_scale(b, a)
	## else
		return nene_Vec2_scale(a, b)
	## end
end
]]
})

-- Rect
local Rect = require 'bindgen.data.math.rect'
bind_module(Rect, 'math/rect', {})

-- Rectf
local Rectf = require 'bindgen.data.math.rectf'
bind_module(Rectf, 'math/rectf', {})

-- Grid
local Grid = require 'bindgen.data.math.grid'
bind_module(Grid, 'math/grid', {})

-- Segment
local Segment = require 'bindgen.data.math.segment'
bind_module(Segment, 'math/segment', {})

-- Shape
local Shape = require 'bindgen.data.math.shape'
bind_module(Shape, 'math/shape', {})

--[ Resources ]--

-- Texture
local Texture = require 'bindgen.data.texture'
bind_module(Texture, 'texture', {})

-- Font
local Font = require 'bindgen.data.font'
bind_module(Font, 'font', {
	prepend = [[
local TextureCreation: type = @Texture.TextureCreation
]]
})

-- Music
local Music = require 'bindgen.data.audio.music'
bind_module(Music, 'audio/music', {})

-- Sound
local Sound = require 'bindgen.data.audio.sound'
bind_module(Sound, 'audio/sound', {})

-- Texture Atlas
local TextureAtlas = require 'bindgen.data.texture_atlas'
bind_module(TextureAtlas, 'texture_atlas', {})

-- Tilemap
local Tilemap = require 'bindgen.data.tilemap'
bind_module(Tilemap, 'tilemap', {})

--[ Etc ]--
-- Intersections
local Intersections = require 'bindgen.data.intersections'

bind_module(Intersections, 'intersections', {})

-- Collision
local Collision = require 'bindgen.data.collision'
bind_module(Collision, 'collision', {})

-- Animation
local Animation = require 'bindgen.data.animation'
bind_module(Animation, 'animation', {})

-- Color
local Color = require 'bindgen.data.color'
bind_module(Color, 'color', {})
