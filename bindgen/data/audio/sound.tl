--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'
local ast_reader = require 'bindgen.ast_reader'

local symbols = ast_reader.read_file('audio/sound', 'nene_Sound')
assert(symbols, "no 'symbols' returned")

local structs = ast_reader.get_structs(symbols, 'nene')
assert(structs, "no 'structs' returned")

local funcs = ast_reader.get_functions(symbols, 'nene_Sound')
assert(funcs, "no 'funcs' returned")

local sound = Node.File.new {
   dependencies = {
      dependencies = {
         ['SDL_mixer'] = { '"SDL_mixer.h"', is_header = true },
      },
      header = '"nene/audio/sound.h"',
   },
   modname = 'Sound',
   enums = {},
   structs = structs,
   funcs = funcs,
   aliases = {},
   global_vars = {},
}
assert(sound, "no 'sound' created")

return sound
