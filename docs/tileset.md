### Summary
* [Tileset](#tileset)
* [Tileset:draw_tile](#tilesetdraw_tile)
* [Tileset:draw_nth_tile](#tilesetdraw_nth_tile)

## tileset

The Tileset module.

### Tileset

```lua
local Tileset = @record{
  width: uint16,    -- Amount of tiles per line
  grid: Grid,       -- Tileset Grid (that is, size and gap of tiles)
  texture: Texture, -- Tileset texture
}
```

The Tileset record.

Related Nene documentation:
* [Texture](texture.md#texture)
* [Math.Grid](math/grid.md#grid)

### Tileset:draw_tile

```lua
function Tileset:draw_tile(
  column: uint16,
  row: uint16,
  position: Vec2,
  tint: facultative(Color),
  angle: facultative(number),
  rotation_center: facultative(Vec2),
  flip_horizontal: facultative(boolean),
  flip_vertical: facultative(boolean)
)
```

Draws a certain tile from `column` and `row` coordinates at certain `position`.

You can optionally pass a `tint` argument that will change the tile's color.

Just as in `Texture.draw`, you can also optionally
pass `angle`, `rotation_center`, `flip_horizontal` and `flip_vertical` arguments.

> Note: `column` and `row` starts at `0`, not `1`.

Related Nene documentation:
* [Tileset.draw_nth_tile](#tilesetdraw_nth_tile)
* [Texture.draw](texture.md#texturedraw)
* [Color](color.md#color)
* [Math.Grid.get_rect](math/grid.md#gridget_rect)
* [Math.Vec2](math/vec2.md#vec2)

### Tileset:draw_nth_tile

```lua
function Tileset:draw_nth_tile(
  n: uint16,
  position: Vec2,
  tint: facultative(Color),
  angle: facultative(number),
  rotation_center: facultative(Vec2),
  flip_horizontal: facultative(boolean),
  flip_vertical: facultative(boolean)
)
```

Draws a certain `n`th tile at certain `position`.

You can optionally pass a `tint` argument that will change the tile's color.

Just as in `Texture.draw`, you can also optionally
pass `angle`, `rotation_center`, `flip_horizontal` and `flip_vertical` arguments.

> Note: The `n`th value starts at `0`, not `1`.

Related Nene documentation:
* [Tileset.draw_tile](#tilesetdraw_tile)
* [Math.Grid.get_nth_cell_column_row](math/grid.md#gridget_nth_cell_column_row)
* [Color](color.md#color)
* [Math.Vec2](math/vec2.md#vec2)

---
