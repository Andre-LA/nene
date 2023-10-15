--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST = require 'bindgen.ast'
local Generator = require 'bindgen.generator'
local CarpGenerator = require 'bindgen.generators.carp'

local depmap: Generator.DepMap = {
	['Core'] = 'nene/core',
	['Texture'] = 'nene/texture',
	['Font'] = 'nene/font',
	['TextureAtlas'] = 'nene/texture_atlas',
	['Music'] = 'nene/audio/music',
	['Sound'] = 'nene/audio/sound',
	['Vec2i'] = 'nene/math/vec2i',
	['Vec2'] = 'nene/math/vec2',
	['Rect'] = 'nene/math/rect',
	['Rectf'] = 'nene/math/rectf',
	['Grid'] = 'nene/math/grid',
	['Segment'] = 'nene/math/segment',
	['Shape'] = 'nene/math/shape',
	['Intersections'] = 'nene/intersections',
	['Collision'] = 'nene/collision',
	['Animation'] = 'nene/animation',
	['Tilemap'] = 'nene/tilemap',
	['Color'] = 'nene/color',
}

local carpgen = CarpGenerator.new(depmap)

local function bind_module(module: AST.Module, src: string, wrap_options: Generator.WrapOptions, post_fn: function(string): string)
	local binding = carpgen:module(module, wrap_options)
	if post_fn then
		binding = post_fn(binding)
	end

	local outpath = 'bindings/carp/nene/'..src..'.carp'
	local outfile = io.open(outpath, 'w')

	if outfile then
		outfile:write(binding)
		outfile:close()
	end
end

-- core
local Core = require 'bindgen.data.core'

bind_module(Core, 'core', {
	prepend = [[
(load "nene/sdl/sdl2.carp")
(load "nene/sdl/sdl2_image.carp")
(load "nene/sdl/sdl2_mixer.carp")
(load "nene/sdl/sdl2_ttf.carp")

(Project.config "cflag" "-fuse-ld=lld -I libnene/include -I libnene/include/SDL2 -std=c11 -L libnene/lib -L libnene/lib64 -Wl,-rpath='$ORIGIN/libnene/lib64'")
(Project.config "libflag" "-lnene -lSDL2 -lSDL2_image -lSDL2_mixer -lSDL2_ttf")
(Project.config "output-directory" ".")

(Unsafe.preproc (Unsafe.emit-c "#include \"SDL.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"SDL_image.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"SDL_ttf.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"SDL_mixer.h\""))

(Unsafe.preproc (Unsafe.emit-c "#include \"nene/core.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/config.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/texture.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/font.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/texture_atlas.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/audio/music.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/audio/sound.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/math/vec2i.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/math/vec2.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/math/rect.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/math/rectf.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/math/grid.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/math/segment.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/math/shape.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/intersections.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/collision.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/animation.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/tilemap.h\""))
(Unsafe.preproc (Unsafe.emit-c "#include \"nene/color.h\""))


]]
-- [
-- -- this contains the bindings for SDL2 and the linking procedures
-- ## linklib 'nene'
-- ## linklib 'm'

-- require 'nene.raw.sdl2'
-- require 'nene.raw.sdl2_image'
-- require 'nene.raw.sdl2_mixer'
-- require 'nene.raw.sdl2_ttf'

-- local MilliTime: type = @uint64
-- ]
	}
	-- function(binding: string): string
	-- 	return (binding:gsub('%(register%-type Core "nene_Core".-\n', '(register-type Core "nene_Core")'))
	-- end
)
--[ Math ]--

-- Vec2i
local Vec2i = require 'bindgen.data.math.vec2i'
bind_module(Vec2i, 'math/vec2i', {})

-- Vec2
local Vec2 = require 'bindgen.data.math.vec2'
bind_module(Vec2, 'math/vec2', {})

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

local Texture = require 'bindgen.data.texture'
bind_module(Texture, 'texture', {})

-- Font
local Font = require 'bindgen.data.font'
bind_module(Font, 'font', {})

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
