--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local AST <const> = require 'bindgen.ast'
local Utils <const> = require 'bindgen.tools.utils'

local record Generator
	type TypeMap = {string:string}
	type DepMap = {string:string}

	record WrapOptions
		begin_prepend: string
		prepend: string
		append: string
		privatize: {string:boolean}
	end

	typemap: TypeMap
	depmap: DepMap
end

local Generator_mt: metatable<Generator> = { __index = Generator }

function Generator.new(typemap: Generator.TypeMap, depmap: Generator.DepMap): Generator
	local generator: Generator = {
		typemap = typemap,
		depmap = depmap,
	}
	
	return setmetatable(generator, Generator_mt)
end

function Generator.WrapOptions.new(init: Generator.WrapOptions): Generator.WrapOptions
	return {
		begin_prepend = init.begin_prepend or '',
		prepend = init.prepend or '',
		append = init.append or '',
		privatize = init.privatize or {},
	}
end

-- returns the module's main strucutre if applicable, nil otherwise.
function Generator.there_is_module_struct(module: AST.Module): AST.Struct
	return Utils.ifindk(
		module.structs,
		module.name,
		function(s: AST.Struct): string
			return s.sym.name
		end
	) as AST.Struct
end

-- generate comment lines
function Generator:gen_comments(comment: AST.Comment, prefix: string, postfix: string, indent: integer): string
	assert(prefix, "you must pass 'prefix'.")
	assert(postfix, "you must pass 'postfix'.")

	local result: {string} = {}

	for _, line in comment:iter_lines() do
		local indent_str = string.rep('	', indent)
		table.insert(result, string.format("%s%s%s%s", indent_str, prefix, line, postfix))
	end

	return table.concat(result, '\n')
end

function Generator:apply_typemap(_type: AST.Type): string
	local text = _type.ctype
	text = text:gsub('const ', '')

	if text == 'char *' then
		return self.typemap['cstring']
	end
	
	local ctype, ptr_or_arr = text:match('([%w_]+) ?([%[%]%*%d]*)')

	if _type:is_primitive() then
		for T, langT in pairs(self.typemap) do
			if ctype == T then
				ctype = langT
				break
			end
		end
	else
		ctype = _type.type
	end

	ptr_or_arr = ptr_or_arr:gsub('%[%]', '*[0]')

	return ptr_or_arr .. ctype
end

return Generator
