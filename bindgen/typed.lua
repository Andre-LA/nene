local typed = {}

-- types
local Types = {
  FieldDecl = true,
  StructDecl = true,
  FnDecl = true,
  File = true,
  Link = true,
  Header = true,
  Generator = true,
}

function typed.is_type(type)
  return Types[type]
end

function typed.is_typed(value)
  return value.__type and typed.is_type(value.__type)
end

function typed.type_of(v, _type)
  assert(type(v) ~= 'nil', "'v' must passed")
  assert(type(_type) ~= 'nil', "'_type' must passed")

  if _type == 'table' or type(v) ~= 'table' then
    return type(v) == _type
  end

  assert(typed.is_type(_type), "unknown type :" .. tostring(_type))
  return v.__type == _type
end

function typed.array_of(arr, type)
  assert(typed.is_type(type), "unknown type :" .. tostring(type))

  for i = 1, #arr do
    if not typed.type_of(arr[i], type) then
      return false
    end
  end
  return true
end

function typed.instance_of(from, type, value)
  assert(typed.is_type(type), "unknown type :" .. tostring(type))

  local v = setmetatable(value, { __index = from })
  assert(typed.type_of(v, type), "the resultant value don't match the expected type")
  return v
end


function typed.typed(type, v)
  assert(typed.is_type(type), "unknown type: " .. tostring(type))
  return setmetatable(v, { __index = { __type = type } })
end

typed = setmetatable(typed, { __call = function(_, ...) return typed.typed(...) end })

return typed
