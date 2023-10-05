
--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Fun = require 'bindgen.tools.fun'

local Symbol = require 'bindgen.ast.symbol'

local record Enum
	record Constant
		sym: Symbol
		constant: integer
	end

	sym: Symbol
	constants: {Constant}
end

-- Enum
local Enum_mt: metatable<Enum> = { __index = Enum }
local EnumConstant_mt: metatable<Enum.Constant> = { __index = Enum.Constant }

function Enum.Constant.new(init: Enum.Constant): Enum.Constant
	local constant: Enum.Constant = {
		sym = Symbol.new(assert(init.sym, "you must set 'sym' field.")),
		constant = assert(init.constant, "you must set 'constant' field."),
	}
	return setmetatable(constant, EnumConstant_mt)
end

function Enum.new(init: Enum): Enum
	local enum: Enum = {
		sym = Symbol.new(assert(init.sym, "you must set 'sym' field.")),
		constants = Fun.map(
			assert(init.constants, "you must set 'constants' field."),
			function(c: Enum.Constant): Enum.Constant return Enum.Constant.new(c) end
		),
	}
	return setmetatable(enum, Enum_mt)
end

return Enum
