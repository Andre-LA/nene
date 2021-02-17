# nene/tilemap.nelua
## Nene.Tilemap (record)
```lua
global Nene.Tilemap = @record{
  atlas: *Nene.TextureAtlas,
  width: uinteger,
  height: uinteger,
  map: vector(isize),
}
```


## Nene.Tilemap:get_position_from_index (function)
```lua
function Nene.Tilemap:get_position_from_index(index: usize): Nene.Math.Vec2
```

