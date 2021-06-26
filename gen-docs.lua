local nldoc = require 'nldoc'

local function doc(filename, path)
  local emitter = nldoc.Emitter.create()

  if string.find(filename, '.nelua') then
    print('documenting '..filename..'...')
    print('PATH :', path)

    nldoc.generate_doc(emitter, 'nene/'..path..filename)

    local outfilename = filename:gsub('.nelua', '.md')

    print('writing to: ', 'docs/'..path..outfilename)
    nldoc.write_file('docs/'..path..outfilename, emitter:generate())
  end
end

local function doc_dir(dirname)
  local path = string.gsub(dirname, 'nene/', '')
  print('PATH IS ', path)

  for filename in lfs.dir(dirname) do
    doc(filename, path)
  end
end

doc_dir('nene/')
doc_dir('nene/wrappers/')
