--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local record Comment
	-- an array of lines of text
	text: {string}
end

local Comment_mt: metatable<Comment> = { __index = Comment }

function Comment.new(init: Comment): Comment
	local com: Comment = {
		text = assert(init.text, "you must set 'text' field."),
	}
	return setmetatable(com, Comment_mt)
end

function Comment:append_line(line: string)
	table.insert(self.text, line)
end

function Comment:append_paragraph(paragraph: {string})
	for i=1, #paragraph do
		self:append_line(paragraph[i])
	end
end

function Comment:iter_lines(): (function(): integer, string)
	return ipairs(self.text)
end

function Comment.from_string(str: string): Comment
	local com: Comment = Comment.new({
		text = {},
	})

	for line in string.gmatch(str, '.-\n') do
		com:append_line(line)
	end

	return com
end

return Comment

