### Summary
* [Tilemap](#tilemap)
* [Tilemap:get_height](#tilemapget_height)
* [Tilemap:get_size](#tilemapget_size)
* [Tilemap:draw](#tilemapdraw)

## tilemap

The Tilemap module.

### Tilemap

```lua
local Tilemap = @record{
  tileset: Tileset,  -- The tileset of this tilemap
  width: uint16,     -- Amount of tiles per line
  grid: Grid,        -- The grid of the tilemap
  map: span(uint16), -- The map of the tilemap
}
```

A tilemap contains a `width` number of tiles per line and a map made of numbers which are the `n+1`th tiles from the tileset.

This is how the `map` field works:
* `map` is a `span` of `uint16` numbers, the first entry is on the uppper-left corner of the tilemap and it goes from
left to right, top to bottom direction.
* each number of `map` is either a `tile+1` tile from the tileset or an empty space.
* when the number it's `0`, then it's an empty space, othewise it refers to a `tile` from the tileset

Remember: tileset's tiles starts from 0, here these tiles are summed with `1` so the `0` can be used as an empty space.

> Note: Some maps from other programs (like Tiled) uses `-1` as an empty space, if you use it, remember to also sum with 1 to
convert to nene's tilemap numbers (don't worry, nene already subtracts with 1 in order to convert to Tileset numbers).

Related Nene documentation:
* [Math.Grid](math/grid.md#grid)

### Tilemap:get_height

```lua
function Tilemap:get_height(): isize
```

Returns the map's height.

For example, let's say that an tilemap have 3 tiles of width, and it contains 5 tiles
in it's map, then the map looks like this:

```
┌───┬───┬───┐ ┬ 0 ↓ height
│ 1 │ 2 │ 3 │ │
├───┼───┼───┘ ┼ 1
│ 4 │ 5 │     │
└───┴───┘     ┴ 2 -> this is the result
```

### Tilemap:get_size

```lua
function Tilemap:get_size(): Vec2
```

Returns the map's size in pixels.

For example, let's say that an tilemap have 3 tiles of width, and it contains 5 tiles
in it's map, also let's cells of the tilemap's grid it's 16x16 without gaps:

```
width →
0px  16px 32px 48px
├────┼────┼────┤
┌────┬────┬────┐ ┬ 0 (0px) ↓ height
│  1 │  2 │  3 │ │
├────┼────┼────┘ ┼ 1 (16px)
│  4 │  5 │      │
└────┴────┘      ┴ 2 (32px)
```

Thus the size will be { 48, 32 }

### Tilemap:draw

```lua
function Tilemap:draw(position: Vec2, tint: facultative(Color))
```

Draw the whole `tilemap` at the `position`.

You can optionally pass a color `tint`.

Related Nene documentation:
* [Math.Vec2](math/vec2.md#vec2)
* [Texture](texture.md#texture)
* [Color](color.md#color)

---
