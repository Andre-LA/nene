--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local record Header
	header: string
end

local Header_mt: metatable<Header> = { __index = Header }

function Header.new(init: Header): Header
	local header: Header = {
		header = assert(init.header, "you must set 'header' field."),
	}
	return setmetatable(header, Header_mt)
end

return Header
