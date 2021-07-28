### Tilemap

```lua
global Tilemap = @record{
  tilemap_width: isize,
  tileset_width: isize,
  grid: Math.Grid,
  map: vector(isize),
}
```

A tilemap contains a `width` number of tiles and a `map` of numbers which are the tiles from the tileset.

This is how `map` "id"s works:
* `map` is a `vector` of `isize` numbers, the first entry is on the uppper-left corner of the tilemap and it goes from
left to right, top to bottom direction.
* each entry is either a tile from the tileset or an empty space.
* when the entry value is `0`, then it's an empty space, othewise it refers to a tile from the tileset (`1` = "1st tile", and so on),
just as tilemap it starts from top-left and goes from left to right, top to bottom.

### Tilemap:get_tile_column_row

```lua
function Tilemap:get_tile_column_row(index: usize): (isize, isize)
```

Gets the proper column and row from a certain tile from the tilemap.

For example, let's say you want to know the column and row of the 9th tile (that is, index `8`) of a tilemap that have a
`width` of 5 tiles:
```lua
-- tilemap grid, the highlighted cell is the 9th tile:
--
--  colums →     0   1   2   3   4
--             ┌───┬───┬───┬───┬───┐
--    rows ↓ 0 │ 0 │ 1 │ 2 │ 3 │ 5 │
--             ├───┼───╬═══╬───┼───┤
--           1 │ 6 │ 7 ║ 8 ║ 9 │10 │
--             └───┴───╩═══╩───┴───┘

-- here we get the column and row of the 9th tile (that is, index 8, since tilemap's map is 0-indexed)
local column, row = my_tilemap:get_tile_column_row(8)
print(column, row) -- prints '2       1'
```

Related Nene documentation:
* [Tilemap.get_tile_pos](#tilemapget_tile_pos)
* [Math.Grid.get_nth_cell_column_row](math.md#mathgridget_nth_cell_column_row)

### Tilemap:get_tile_pos

```lua
function Tilemap:get_tile_pos(column: isize, row: isize): Vec2
```

Gets the proper (local) position from a certain tile by column and row of the tilemap (not tileset!).

The column and row of a tile can be obtained through `Tilemap.get_tile_column_row` method.

For example, let's say you want to know the position of the 9th tile (that is, 8th index) of a tilemap that have a
`width` of 5 tiles, 32x32 dimensions each:
```lua
--                   tilemap grid
--
-- columns:    0     1     2     3     4
--          0px   32px  64px  96px  128px
--          ├─────┼─────┼─────┼─────┼─────┬ 0px
--   row: 0 │  0  │  1  │  2  │  3  │  5  │
--          ├─────┼─────@═════╬─────┼─────┼ 32px
--        1 │  6  │  7  ║  8  ║  9  │ 10  │
--          └─────┴─────╩═════╩─────┴─────┴ 64px

-- let's create the above tilemap:
local my_tilemap: Tilemap = {
  tilemap_width =  4, -- here we setup how many tiles fits on a line of the tilemap, the height it's "infinite".
  tileset_width = 10, -- same concept, but on tileset
  -- this comes from the Math module, it stores the "layout" of tilemap and tileset
  grid = {
    cell_size = { 32, 32 } -- the dimensions of each tile, Grid also allows gaps
  },
  map = { -- finally, the map of tilemap, it's just a vector, each entry is the index of tileset
    00, 01, 02, 03,
    10, 11, 12, 13,
  }
}

-- here, we obtain the column and row of the 9th tile using `get_tile_column_row`,
-- since tilemap's map is 0-indexed, we use `8`.
local column, row = my_tilemap:get_tile_column_row(8)

-- returns the position of `@` of the (ascii) grid above, that is, {64, 32}
-- this is the position of the 9th tile relative to `my_tilemap`!
local tile_pos = my_tilemap:get_tile_pos(column, row)
```

Related Nene documentation:
* [Tilemap.get_tile_column_row](#tilemapget_tile_column_row)
* [Math.Vec2](math.md#mathvec2)
* [Math.Grid](math.md#mathgrid)

### Tilemap.draw

```lua
function Tilemap.draw(self: Tilemap, nene: Nene, tileset: Texture, position: Vec2, color: facultative(Color))
```

Draw the whole `tilemap` using the given `tileset` texture at `position` (relative to screen) using the `color` tint.

A `color` tint can be optionally passed, which is white by default.

Related Nene documentation:
* [Nene](core.md#nene)
* [Math.Grid](math.md#mathgrid)
* [Math.Vec2](math.md#mathvec2)
* [Texture](texture.md#texture)
* [Color](colors.md#color)

---
