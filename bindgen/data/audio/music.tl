--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('build/ast_dumps/audio/music.txt', 'nene_Music')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Music')
assert(funcs, "no 'funcs' returned")

local music = Node.File.new {
   dependencies = {
      dependencies = {
         ['SDL_mixer'] = { '<SDL2/SDL_mixer.h>', is_header = true },
      },
      header = '"nene/audio/music.h"',
   },
   modname = 'Music',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(music, "no 'music' created")

return music
