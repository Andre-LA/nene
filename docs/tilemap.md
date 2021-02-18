# nene/tilemap.nelua
## Nene.Tilemap (record)
a tilemap uses an atlas and applies it for tilemaps:  
it contains just two fields:  
* atlas field (read above)  
* a map, this map is a vector of integers  
  0 and positive numbers refers to the indexes of the atlas,  
  while negative numbers is a "skip" count, which skips  
  some tiles of the tilemap, this should be used on empty  
  space tiles (like the space of a room);
```lua
global Nene.Tilemap = @record{
  atlas: *Nene.TextureAtlas,
  width: uinteger,
  height: uinteger,
  map: vector(isize),
}
```

## Nene.Tilemap:get_position_from_index (function)
gets the proper (local) position from a certain tile index of the tilemap (not the atlas/tileset!).  
for example, let's say you want to draw the 9th tile (index = 8) of a tilemap (which have 5 tiles per "line"  
and 32px dimension), at the position `pos`;  
then you would need to draw it at the sum of `pos` with the tile's position:  
```lua  
-- (note: this code ignores the skip tiles)  
  
-- tilemap grid:  
-- 0   32  64  96  128  
-- ┌───┬───┬───┬───┬───┐ 0  
-- │ 0 │ 1 │ 2 │ 3 │ 5 │  
-- ├───┼───x═══╬───┼───┤ 32  
-- │ 6 │ 7 ║ 8 ║ 9 │10 │  
-- └───┴───╩═══╩───┴───┘ 64  
  
local tile_pos = tilemap:get_position_from_index(index) -- the position of `x` on the above grid  
core_state:render_draw_atlas_frame($tilemap.atlas, frame, position + tile_pos, color)  
```  
**However, it can be a little more tricky if you're using "skip" tiles, but you don't actually need to code any code for that**  
There is already on the `Nene.CoreState` a function called `render_draw_tilemap` which already does the tilemap's rendering
```lua
function Nene.Tilemap:get_position_from_index(index: usize): Nene.Math.Vec2
```
