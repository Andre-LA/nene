# nene/tilemap.nelua
## Tilemap
```lua
local Tilemap = @record{
  width: uinteger,
  map: vector(isize),
}
global Nene.Tilemap = @Tilemap
## Tilemap.value.is_tilemap = true
```
A tilemap contains a `width` number of tiles and a `map` of numbers which are the tiles indexes. 
 
This is how `map` "id"s are expected to work: 
* `map` is a `vector` of `isize` numbers, the first entry is on the uppper-left corner of the tilemap and it goes from 
left to right, top to bottom direction. 
* each entry is either a tile from the tileset or empty space(s) 
* when the entry value is `0`, then it's a empty space, othewise it refers to a tile from the tileset (`1` = "1st tile", and so on), 
just as tilemap it starts from top-left and goes from left to right, top to bottom.

---

## Tilemap:get_tile_column_row
```lua
function Tilemap:get_tile_column_row(index: usize): (isize, isize)
```
Gets the proper column and row from a certain tile from the tilemap (not tileset!). 
 
For example, let's say you want to know the column and row of the 9th tile (that is, 8th index) of a tilemap that have a 
`width` of 5 tiles: 
```lua 
-- tilemap grid, the highlighted cell is the 9th tile: 
--     0   1   2   3   4 
--   ┌───┬───┬───┬───┬───┐ 
-- 0 │ 0 │ 1 │ 2 │ 3 │ 5 │ 
--   ├───┼───╬═══╬───┼───┤ 
-- 1 │ 6 │ 7 ║ 8 ║ 9 │10 │ 
--   └───┴───╩═══╩───┴───┘ 
 
-- here we get the column and row of the 9th tile (that is, index 8, since tilemap's map is 0-indexed) 
local column, row = my_tilemap:get_tile_column_row(8) 
print(column, row) -- prints '2       1' 
``` 
 
Related Nene documentation: 
* [Nene.Tilemap.get_tile_pos](#nenetilemapget_tile_pos) 
* [Nene.Math.Grid.get_nth_cell_column_row](math.md#nenemathgridget_nth_cell_column_row)

---

## Tilemap:get_tile_pos
```lua
--  --
--  -- columns:    0     1     2     3     4
 function Tilemap:get_tile_pos(column: isize, row: isize, tileset: Grid): Vec2
```
Gets the proper (local) position from a certain tile by column and row of the tilemap (not tileset!). 
 
The column and row of a tile can be obtained through `Nene.Tilemap.get_tile_column_row` method. 
 
For example, let's say you want to know the position of the 9th tile (that is, 8th index) of a tilemap that have a 
`width` of 5 tiles, 32x32 dimensions each: 
```lua 
--                    tilemap grid: 
--          0px   32px  64px  96px  128px 
--          ├─────┼─────┼─────┼─────┼─────┬ 0px 
--   row: 0 │  0  │  1  │  2  │  3  │  5  │ 
--          ├─────┼─────x═════╬─────┼─────┼ 32px 
--        1 │  6  │  7  ║  8  ║  9  │ 10  │ 
--          └─────┴─────╩═════╩─────┴─────┴ 64px 
 
-- the tileset grid, in this example each tile of our hypothetical tileset and tilemap contains 32x32 dimensions, 
-- without gaps; this is needed by `get_tile_pos` method. 
local tileset_grid: Nene.Math.Grid = { rect_size = {32, 32} } 
 
-- here, we obtain the column and row of the 9th tile using `get_tile_column_row`, 
-- since tilemap's map is 0-indexed, we use `8`. 
local column, row = my_tilemap:get_tile_column_row(8) 
 
-- returns the position of `x` of the (ascii) grid above, that is, {64, 32} 
-- this is the position of the 9th tile relative to `my_tilemap`! 
local tile_pos = my_tilemap:get_tile_pos(column, row, tileset_grid) 
``` 
 
Related Nene documentation: 
* [Nene.Tilemap.get_tile_column_row](#nenetilemapget_tile_column_row) 
* [Nene.Math.Vec2](math.md#nenemathvec2) 
* [Nene.Math.Grid](math.md#nenemathgrid)

---

## Tilemap:__next
```lua
function Tilemap:__next(tile_index: isize): (boolean, isize, isize)
```
The `__next` iterator function, used by `__pairs` iterator, it receives the "state" (the tilemap itself) and the 
control variable (the "tileset index") as parameter, it returns: 
* a `boolean`: `true` when the next iteration can occur, this is only used by the `__pairs` function. 
* `tile_index`: the nth tile of the tilemap. 
* `tileset_index`: the value of `self.map[tile_index]`, it refers to a tile on tileset. 
 
Related Nelua documentation: 
[For In (Nelua Overview)](https://nelua.io/overview/#for-in)

---

## Tilemap:__pairs
```lua
function Tilemap:__pairs()
```
A tilemap can be iterated with `for in` syntax through `pairs`, which uses this `__pairs` metamethod to work. 
 
code example: 
```lua 
for tile_index, tileset_index in pairs(my_tilemap) do 
  if tileset_index ~= 0 then 
    -- do stuff with this tile :) 
  end 
end 
``` 
 
Related Nelua documentation: 
[For In (Nelua Overview)](https://nelua.io/overview/#for-in)

---

## Tilemap:draw
```lua
function Tilemap:draw(nene_core: Nene.Core, tileset_grid: Grid, tileset_texture: Texture, position: Vec2, color: facultative(Color))
```
Draw the whole `tilemap` at `position` (relative to screen) using the `color` tint. 
 
The tilemap will use `atlas` as "tileset", this atlas however is actually a grid and not a resource. Due to this, 
you should also give the `tileset` texture. 
 
Related Nene documentation: 
* [Nene.Tilemap](tilemap.md) 
* [Nene.Math.Vec2](https://github.com/Andre-LA/nene/blob/nene-rework/docs/math.md#nenemathvec2) 
* [Nene.Math.Grid](https://github.com/Andre-LA/nene/blob/nene-rework/docs/math.md#nenemathgrid) 
* [Nene.Color](https://github.com/Andre-LA/nene/blob/nene-rework/docs/math.md#nenemathvec2)

---
