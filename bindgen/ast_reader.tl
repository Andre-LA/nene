--[[
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
]]

local Node = require 'bindgen.node'

local function no_repeat(arr: {any}, value: any): boolean
   for _, v in ipairs(arr) do
      if v == value then
         return false
      end
   end
   return true
end

local enum SymbolType
   "none"
   "enum"
   "record"
   "globalvar"
   "function"
   "typealias"
end

local record Symbol
   record Field
      name: string
      type: string
      constant: integer
      comments: Node.Comments

      new: function(name: string, _type: string): Field
   end

   name: string
   type: SymbolType
   symtype: string
   fields: {string:Field}
   field_seq: {Field}
   comments: Node.Comments
end

local Symbol_mt: metatable<Symbol> = {
   __index = Symbol
}

function Symbol.new(name: string): Symbol
   assert(name, "'name' expected")

   local symbol: Symbol = {
      name = name,
      type = 'none',
      symtype = '',
      fields = {},
      field_seq = {},
      comments = {},
   }
   return setmetatable(symbol, Symbol_mt)
end

function Symbol:get_last_field(): Symbol.Field
   return self.field_seq[#self.field_seq] or {name=''}
end

local SymbolField_mt: metatable<Symbol.Field> = {
   __index = Symbol.Field,
}

function Symbol.Field.new(name: string, _type: string): Symbol.Field
   local field: Symbol.Field = {
      name = name,
      type = _type or '',
      constant = 0,
      comments = {},
   }
   return setmetatable(field, SymbolField_mt)
end

local record Symbols
   symbols: {string:Symbol}
   symbol_seq: {Symbol}
end

local Symbols_mt: metatable<Symbols> = {
   __index = Symbols
}

function Symbols.new(): Symbols
   local symbols: Symbols = {
      symbols = {},
      symbol_seq = {},
   }
   return setmetatable(symbols, Symbols_mt)
end

function Symbols:get_last_symbol(): Symbol
   return self.symbol_seq[#self.symbol_seq] or Symbol.new('')
end

function Symbols:push(name: string)
   assert(name and #name > 0, "'name' expected");

   if self.symbols[name] then
      return
   end

   local symbol = Symbol.new(name)

   self.symbols[name] = symbol
   table.insert(self.symbol_seq, self.symbols[name])
end

function Symbols:push_field(name: string, _type: string)
   assert(name and #name > 0, "'name' expected")
   assert(_type and #_type > 0, "'_type' expected")
   
   local sym = self:get_last_symbol()

   local field = Symbol.Field.new(name, _type)
   
   sym.fields[name] = field
   table.insert(sym.field_seq, sym.fields[name])
end

function Symbols:push_field_constant(constant: integer)
   assert(constant, "'constant' expected")
   local sym = self:get_last_symbol()
   local last_field = sym:get_last_field()
   last_field.constant = constant
end

function Symbols:push_comment(text: string)
   assert(text and #text > 0, "'text' expected")
   local sym = self:get_last_symbol()

   local comments: {string} = sym.comments
   if sym.type ~= 'function' and #sym.field_seq > 0 then
      comments = sym:get_last_field().comments
   end
   
   if no_repeat(comments, text) then
      table.insert(comments, text)
   end
end

function Symbols:push_nl_comment()
   local sym = self:get_last_symbol()
   local comments: {string} = sym.comments
   if sym.type ~= 'function' and #sym.field_seq > 0 then
      comments = sym:get_last_field().comments
   end

   if #comments > 0 then
      table.insert(comments, '')
   end
end

function Symbols:push_type(_type: SymbolType)
   assert(_type, "'_type' expected")
   assert(_type ~= 'none', "'_type' shouldn't be 'none'")
   local sym = self:get_last_symbol()
   sym.type = _type
end

function Symbols:push_symtype(symtype: string)
   assert(symtype and #symtype > 0, "'symtype' expected")
   local sym = self:get_last_symbol()
   sym.symtype = symtype
end

--[ readers ]--

local readers = {}

readers['EnumDecl'] = function(symbols: Symbols, line: string)
   local symbol_name = line:match('EnumDecl %w+ <.-> line:%d+:%d+ ([%w+_]+)')
   symbols:push(symbol_name)
   symbols:push_type('enum')
end

readers['EnumConstantDecl'] = function(symbols: Symbols, line: string)
   local enum_const_name, enum_const_type = line:match("EnumConstantDecl %w+ <.-> col:%d+ ([%w_]+) '([%w_]+)'")
   symbols:push_field(enum_const_name, enum_const_type)
end

readers['IntegerLiteral'] = function(symbols: Symbols, line: string)
   local value = line:match("IntegerLiteral %w+ <.-> '[%w_]+' (%d+)")
   symbols:push_field_constant(tonumber(value))
end

readers['RecordDecl'] = function(symbols: Symbols, line: string)
   local symbol_name = line:match('RecordDecl %w+ <.-> line:%d+:%d+ struct ([%w_]+)')
   symbols:push(symbol_name)
   symbols:push_type('record')
end

readers['VarDecl'] = function(symbols: Symbols, line: string)
   local var_name, var_type = line:match("VarDecl %w+ <.-> col:%d+ ([%w_]+) '([%w_ ]+)'")
   symbols:push(var_name)
   symbols:push_type('globalvar')
   symbols:push_symtype(var_type)
end

readers['FieldDecl'] = function(symbols: Symbols, line: string)
   local field_name, field_type = line:match("FieldDecl %w+ <.-> col:%d+ ([%w_]+) '([%w_ %*%d%[%]]+)")
   symbols:push_field(field_name, field_type)
end

readers['FunctionDecl'] = function(symbols: Symbols, line: string)
   local symbol_name, sym_type = line:match("FunctionDecl %w+ <.-> col:%d+ ([%w_]+) '([%w_ %*]+)")
   symbols:push(symbol_name)
   symbols:push_type('function')
   symbols:push_symtype(sym_type)
end

readers['ParmVarDecl'] = function(symbols: Symbols, line: string)
   local param_name, param_type = line:match("ParmVarDecl %w+ <.-> col:%d+ ([%w_]+) '([%w_ %*%d%[%]]+)'")
   symbols:push_field(param_name, param_type)
end

readers['TextComment'] = function(symbols: Symbols, line: string)
   local text = line:match('TextComment %w+ <.-> Text="%s*([^\n]+)')
   text = text:sub(1, -2)
   symbols:push_comment(text)
end

readers['ParagraphComment'] = function(symbols: Symbols, _: string)
   symbols:push_nl_comment()
end

readers['TypedefDecl'] = function(symbols: Symbols, line: string)
   local alias_name, alias_type = line:match("TypedefDecl %w+ <.-> col:%d+ referenced ([%w_]+) '([%w_]+)'")
   symbols:push(alias_name)
   symbols:push_type('typealias')
   symbols:push_symtype(alias_type)
end

local function call_reader_node(symbols: Symbols, node: string, line: string)
   assert(symbols, "'symbols' expected")
   assert(node, "'node' expected")
   assert(line, "'line' expected")

   if readers[node] then
      readers[node](symbols, line)
   end
end

local ast_reader = {}

function ast_reader.read_file(filepath: string, modname: string, first_expected_symbol: string): {Symbol}
   assert(filepath, "expected 'filepath' argument, got nil")
   assert(modname, "expected 'modname' argument, got nil")
   assert(not first_expected_symbol or #first_expected_symbol > 0, "expected 'first_expected_symbol' argument, got nil")

   first_expected_symbol = first_expected_symbol or modname

   local dumping: string = ''

   local unlocked: boolean = false
   local skip_dump: boolean = false

   local symbols: Symbols = Symbols.new()

   -- file reading
   for line in io.lines(filepath) do
      if #line < 1 then
         goto continue
      end

      local now_dumping = line:match('Dumping ([%w_]+)')

      -- sadly, ast-dumps creates duplicates on typedefs, thus we need to be sure we
      -- aren't reading duplicating data
      if now_dumping == dumping then
         skip_dump = true
         goto continue
      elseif now_dumping then
         dumping = now_dumping
         skip_dump = false
         goto continue
      end

      -- skip duplicated data dump (generally typedef)
      if skip_dump then
         goto continue
      end
      
      -- check for the first dumping of the first expected symbol, that's necessary because ast dumps
      -- also dumps all the dependencies, thus we need to ignore them before parsing the dump.
      if not unlocked then
         if dumping == first_expected_symbol then
            unlocked = true
         else
            goto continue
         end
      end
      
      -- remove initial noise of the hierarchy (like "   `-" from "   `-RecordType")
      line = line:gsub('^(%A*)(.*)', '%2')

      local ast_node_name = line:match('(%w+)')

      -- run the matching AST node reader
      call_reader_node(symbols, ast_node_name, line)

      ::continue::
   end

   assert(symbols, "..")
   assert(symbols.symbol_seq, "??")

   return symbols.symbol_seq
end

local function remove_prefix(original: string, prefix: string): string
   return (original:gsub(prefix..'_', ''))
end

function ast_reader.get_symbol_func_params(symbol: Symbol): {Node.Func.Param}
   assert(symbol, "'symbol' expected")
   local params: {Node.Func.Param} = {}
   for _, field in ipairs(symbol.field_seq) do
      table.insert(params, Node.Func.Param.new {
         name = field.name,
         type = field.type,
         comments = field.comments,
      })
   end
   return params
end

function ast_reader.get_symbol_func(symbol: Symbol, prefix: string): Node.Func
   assert(symbol, "'symbol' expected")
   assert(prefix, "'prefix' expected")
   return Node.Func.new {
      name = remove_prefix(symbol.name, prefix), 
      cname = symbol.name,
      ret_type = symbol.symtype,
      params = ast_reader.get_symbol_func_params(symbol),
      comments = symbol.comments,
      is_op = 'no-op',
   }
end

function ast_reader.get_symbol_struct_fields(symbol: Symbol): {Node.Struct.Field}
   assert(symbol, "'symbol' expected")
   local fields: {Node.Struct.Field} = {}
   for _, field in ipairs(symbol.field_seq) do
      table.insert(fields, Node.Struct.Field.new {
         name = field.name,
         type = field.type,
         comments = field.comments,
      })
   end
   return fields
end

function ast_reader.get_symbol_struct(symbol: Symbol, prefix: string): Node.Struct
   assert(symbol, "'symbol' expected")
   assert(prefix, "'prefix' expected")
   return Node.Struct.new {
      name = remove_prefix(symbol.name, prefix),
      cname = symbol.name,
      fields = ast_reader.get_symbol_struct_fields(symbol),
      comments = symbol.comments,
   }
end

function ast_reader.get_symbol_enum_constants(symbol: Symbol): {Node.Enum.Constant}
   assert(symbol, "'symbol' expected")
   local constants: {Node.Enum.Constant} = {}
   for _, field in ipairs(symbol.field_seq) do
      table.insert(constants, Node.Enum.Constant.new {
         name = field.name,
         value = field.constant,
         comments = field.comments,
      })
   end
   return constants
end

function ast_reader.get_symbol_enum(symbol: Symbol, prefix: string): Node.Enum
   assert(symbol, "'symbol' expected")
   assert(prefix, "'prefix' expected")
   return Node.Enum.new {
      name = remove_prefix(symbol.name, prefix),
      cname = symbol.name,
      constants = ast_reader.get_symbol_enum_constants(symbol),
      comments = symbol.comments,
   }
end

function ast_reader.get_symbol_type_alias(symbol: Symbol, prefix: string): Node.TypeAlias
   assert(symbol, "'symbol' expected")
   assert(prefix, "'prefix' expected")
   return Node.TypeAlias.new {
      name = remove_prefix(symbol.name, prefix),
      cname = symbol.name,
      aliased_type = symbol.symtype,
      comments = symbol.comments,
   }
end

function ast_reader.get_symbol_global_var(symbol: Symbol, prefix: string): Node.GlobalVar
   assert(symbol, "'symbol' expected")
   assert(prefix, "'prefix' expected")
   return Node.GlobalVar.new {
      name = remove_prefix(symbol.name, prefix),
      cname = symbol.name,
      type = symbol.symtype,
      comments = symbol.comments,
   }
end

local function get_nodes(symbols: {Symbol}, prefix: string, expected_type: SymbolType, get_fn: function(Symbol, string): any): {any}
   assert(symbols, "'symbols' expected")
   assert(prefix, "'prefix' expected")
   assert(expected_type, "'expected_type' expected")
   assert(get_fn, "'get_fn' expected")

   local nodes: {any} = {}

   for _, symbol in ipairs(symbols) do
      if symbol.name:match(prefix) and symbol.type == expected_type then
         table.insert(nodes, get_fn(symbol, prefix))
      end
   end

   return nodes
end

function ast_reader.get_functions(symbols: {Symbol}, prefix: string): {Node.Func}
   assert(symbols, "'symbols' expected")
   assert(prefix, "'prefix' expected")
   return get_nodes(symbols, prefix, 'function', ast_reader.get_symbol_func) as {Node.Func}
end

function ast_reader.get_structs(symbols: {Symbol}, prefix: string): {Node.Struct}
   assert(symbols, "'symbols' expected")
   assert(prefix, "'prefix' expected")
   return get_nodes(symbols, prefix, 'record', ast_reader.get_symbol_struct) as {Node.Struct}
end

function ast_reader.get_enums(symbols: {Symbol}, prefix: string): {Node.Enum}
   assert(symbols, "'symbols' expected")
   assert(prefix, "'prefix' expected")
   return get_nodes(symbols, prefix, 'enum', ast_reader.get_symbol_enum) as {Node.Enum}
end

function ast_reader.get_type_aliases(symbols: {Symbol}, prefix: string): {Node.TypeAlias}
   assert(symbols, "'symbols' expected")
   assert(prefix, "'prefix' expected")
   return get_nodes(symbols, prefix, 'typealias', ast_reader.get_symbol_type_alias) as {Node.TypeAlias}
end

function ast_reader.get_global_vars(symbols: {Symbol}, prefix: string): {Node.GlobalVar}
   assert(symbols, "'symbols' expected")
   assert(prefix, "'prefix' expected")
   return get_nodes(symbols, prefix, 'globalvar', ast_reader.get_symbol_global_var) as {Node.GlobalVar}
end

return ast_reader
