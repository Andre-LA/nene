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
local Core = require 'bindgen.data.core'

bind_file(Core, 'core', {
	begin_prepend = [[
-- this contains the bindings for SDL2 and the linking procedures
## linklib 'nene'
## linklib 'm'
require 'nene.raw.sdl2'
require 'nene.raw.sdl2_image'
require 'nene.raw.sdl2_mixer'
require 'nene.raw.sdl2_ttf'
]],
	append = [[
local Core.MilliTime: type = @MilliTime 
]]
})

--[ Math ]--

-- Vec2i
local Vec2i = require 'bindgen.data.math.vec2i'
bind_file(Vec2i, 'math/vec2i', {
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
bind_file(Vec2, 'math/vec2', {
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
bind_file(Rect, 'math/rect', {})

-- Rectf
local Rectf = require 'bindgen.data.math.rectf'
bind_file(Rectf, 'math/rectf', {})

-- Grid
local Grid = require 'bindgen.data.math.grid'
bind_file(Grid, 'math/grid', {})

-- Segment
local Segment = require 'bindgen.data.math.segment'
bind_file(Segment, 'math/segment', {})

-- Shape
local Shape = require 'bindgen.data.math.shape'
bind_file(Shape, 'math/shape', {})

--[ Resources ]--

-- Texture
local Texture = require 'bindgen.data.texture'
bind_file(Texture, 'texture', {})

-- Font
local Font = require 'bindgen.data.font'
bind_file(Font, 'font', {})

-- Music
local Music = require 'bindgen.data.audio.music'
bind_file(Music, 'audio/music', {})

-- Sound
local Sound = require 'bindgen.data.audio.sound'
bind_file(Sound, 'audio/sound', {})

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
bind_file(Color, 'color', {})
