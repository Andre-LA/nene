-- The Options module

-- Copyright (c) 2021-2022 André Luiz Alvares
-- Nene is licensed under the Zlib license.
-- Please refer to the LICENSE file for details
-- SPDX-License-Identifier: Zlib

--[=[
You can customize some compile-time options through this module.

Example:
```lua
-- require and configure options **before** requiring nene
##[[
local options = require 'nene.options'
options.gamepad_count = 2 -- change gamepad count of nene to 2
]]

-- then, require nene, which will require the options with the data
-- you changed.
local nene = require 'nene'
```
]=]

local options = {
  gamepad_count = 4
}
return options
