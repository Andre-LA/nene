--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'

local record Generator
   type TypeMap = {string:string}

   record WrapOptions
      prepend: string
      append: string
      ignore_overloading: {Node.Op:boolean}
      privatize: {string:boolean}
   end

   typemap: TypeMap
end

local Generator_mt: metatable<Generator> = {
   __index = Generator
}

function Generator.new(typemap: Generator.TypeMap): Generator
   local generator: Generator = {
      typemap = typemap,
   }
   
   return setmetatable(generator, Generator_mt)
end

function Generator.is_system_header(header: string): boolean
   return string.sub(header, 1, 1) == '<'
end

function Generator:is_private_func(func: Node.Func, wrap_options: Generator.WrapOptions): boolean
   return wrap_options.privatize and not not wrap_options.privatize[func.cname]
end

function Generator:apply_typemap(text: string): string
   text = text:gsub('const ', '')

   if text == 'char *' then
      return self.typemap['cstring'] or 'cstring'
   end
   
   local ctype, ptr_or_arr = text:match('([%w_]+) ?([%[%]%*%d]*)')

   for T, langT in pairs(self.typemap) do
      if ctype == T then
         ctype = langT
         break
      end
   end

   ptr_or_arr = ptr_or_arr:gsub('%[%]', '*[0]')

   return ptr_or_arr .. ctype
end

return Generator
