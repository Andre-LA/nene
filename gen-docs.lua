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

    local outfilename = filename:gsub('.nelua', '.md')
    nldoc.write_file('docs/'..path..outfilename, emitter:generate())
  end
end

local function doc_dir(dirname)
  local path = string.gsub(dirname, 'nene/', '')

  local ignored_files = {
    ['init.nelua'] = true
  }

  for filename in lfs.dir(dirname) do
    if not ignored_files[filename] then
      doc(filename, path)
    end
  end
end

doc_dir('nene/')
doc_dir('nene/wrappers/')
