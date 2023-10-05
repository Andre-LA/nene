--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local record Dependency
	module: string
end

local Dependency_mt: metatable<Dependency> = { __index = Dependency }

function Dependency.new(init: Dependency): Dependency
	local module: Dependency = {
		module = assert(init.module, "you must set 'module' field."),
	}
	return setmetatable(module, Dependency_mt)
end

return Dependency
