-- how to run this script:
-- nelua --script gen-docs.lua

local inspect = require 'nelua.thirdparty.inspect'

local doc_chunk = {}

function doc_chunk.tostring(doc)
  local result = {'# ' .. doc.filename }

  local fmt = [[
## %s (%s)
%s
```lua
%s
```
]]

  for i, doc_item in ipairs(doc) do
    local doc_content = string.format(fmt, doc_item.title, doc_item.type, doc_item.doc, doc_item.code)
    table.insert(result, doc_content)
  end

  return table.concat(result, '\n')
end

function doc_chunk:insert(title, _type, doc, code)
  assert(type(title) == 'string')
  assert(type(_type) == 'string')
  assert(type(doc) == 'string')
  assert(type(code) == 'string')

  table.insert(self, {title = title, type = _type, doc = doc, code = code})
end

local function new_doc_chunk(filename)
  assert(type(filename) == 'string')

  return setmetatable(
    { filename = filename },
    { __index = doc_chunk, __tostring = doc_chunk.tostring }
  )
end

local function doc_file(file, filename)
  local documenting = false
  local documented = false

  local file_doc = new_doc_chunk(filename)

  local doc_lines = {}
  local doc_title = ''
  local doc_type = ''
  local doc_code_lines = {}

  for file_line in file:lines() do
    local doc_match = file_line:match('%-%-%-%s?(.*)')
    local gl_rec_match = file_line:match('global (.-) = @record')
    local function_match = file_line:match('function (.-)%s?%(')
    local newlineonly = file_line == ''

    local function print_status()
      --print(inspect{
      --  line = file_line,
      --  documenting = documenting,
      --  documented = documented,
      --  file_doc = file_doc,
      --  doc_lines = doc_lines,
      --  doc_type = doc_type,
      --  doc_code_lines = doc_code_lines,
      --  doc_title = doc_title,
      --  doc_match = doc_match,
      --  gl_rec_match = gl_rec_match,
      --  newlineonly = newlineonly,
      --})
    end

    local function finalize_doc_content()
      documenting = false
      documented = true
      print_status()
    end

    local function add_doc_content()
      documenting = true
      table.insert(doc_lines, doc_match)
      print_status()
    end

    local function add_rec_content()
      documenting = true
      doc_type = 'record'
      doc_title = gl_rec_match
      table.insert(doc_code_lines, file_line)
      print_status()
    end

    local function add_function_content()
      doc_type = 'function'
      doc_title = function_match
      table.insert(doc_code_lines, file_line)

      finalize_doc_content()
    end

    local function add_newline_content()
      table.insert(doc_code_lines, file_line)
      print_status()
    end

    if documenting then
      if doc_match then
        add_doc_content()
      elseif gl_rec_match then
        add_rec_content()
      elseif function_match then
        add_function_content()
      elseif not newlineonly then
        add_newline_content()
      else
        finalize_doc_content()
      end
    else
      if doc_match then
        add_doc_content()
      elseif gl_rec_match then
        add_rec_content()
      elseif function_match then
        add_function_content()
      end
    end

    if documented and not documenting then
      file_doc:insert(
        doc_title,
        doc_type,
        table.concat(doc_lines, '  \n'),
        table.concat(doc_code_lines, '\n')
      )

      doc_title = ''
      doc_type = ''
      doc_lines = {}
      doc_code_lines = {}
    end

    documented = false
  end

  return file_doc
end

for filename in lfs.dir'nene' do
  if filename ~= '.' and filename ~= '..' then
    print('documenting '..filename..'...')

    local in_file = io.open('nene/'..filename)
    local doc = doc_file(in_file, 'nene/'..filename)
    in_file:close()

    local out_file = io.open('docs/'..(filename:gsub('%.nelua', '.md')), 'w+')
    out_file:write(tostring(doc))
    out_file:close()
  end
end
