local nldoc = require 'nldoc'

local symbol_template = [[
### $(name)

```lua
$(code)
```

$(text)

]]

local function doc(filename, path)
  local emitter = nldoc.Emitter.create()

  if string.find(filename, '.nelua') then
    print('documenting '..path..filename..'..')

    nldoc.generate_doc(emitter, 'nene/'..path..filename, { symbol_template = symbol_template })

    local emitted = emitter:generate()

    local summary = {'### Summary\n'}
    for title in emitted:gmatch('### ([%s%g]-)\n') do
      local title_link = title:lower():gsub('[%.%:]', '')
      table.insert(summary, string.format('* [%s](#%s)\n', title, title_link))
    end

    local outfilename = filename:gsub('.nelua', '.md')

    nldoc.write_file('docs/'..path..outfilename, table.concat(summary)..'\n'..emitted)
  end
end

local function doc_dir(dirname)
  local path = string.gsub(dirname, 'nene/', '')

  local ignored_files = {
  }

  for filename in lfs.dir(dirname) do
    if not ignored_files[filename] then
      doc(filename, path)
    end
  end
end

doc_dir('nene/')
doc_dir('nene/math/')
doc_dir('nene/audio/')
doc_dir('nene/raw/')
