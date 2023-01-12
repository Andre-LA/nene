### Summary
* [TextureAtlas](#textureatlas)
* [TextureAtlas:destroy](#textureatlasdestroy)
* [TextureAtlas:__close](#textureatlas__close)
* [TextureAtlas.load](#textureatlasload)
* [TextureAtlas:draw_sub_texture](#textureatlasdraw_sub_texture)
* [TextureAtlas:draw_nth_sub_texture](#textureatlasdraw_nth_sub_texture)

## texture_atlas

The TextureAtlas module.

### TextureAtlas

```lua
local TextureAtlas = @record{
  width: uint16,    -- Amount of sub-textures per line
  grid: Grid,       -- TextureAtlas Grid (that is, size and gap of sub-textures)
  texture: Texture, -- TextureAtlas texture
}
```

The TextureAtlas record.

Represents a texture that contains multiple sub-textures aligned on a grid.

Related Nene documentation:
* [Texture](texture.md#texture)
* [Math.Grid](math/grid.md#grid)

Related articles:
* [Texture Atlas (Wikipedia)](https://en.wikipedia.org/wiki/Texture_atlas)

### TextureAtlas:destroy

```lua
function TextureAtlas:destroy()
```

Destroys the texture and resets the atlas to zeroed state.

Related Nene documentation:
* [Texture.destroy](texture.md#texturedestroy)

### TextureAtlas:__close

```lua
function TextureAtlas:__close()
```

Effectively the same as destroy, called when a to-be-closed variable goes out of scope.

### TextureAtlas.load

```lua
function TextureAtlas.load(filepath: string, width: uint16, grid: Grid): (boolean, TextureAtlas)
```

Loads the texture from a image file, this is a utility function to call
`Texture.load` and initialize the atlas in an easier way.

Returns a `true` ok status and an initialized texture atlas if succesful;
otherwise return `false` with zeroed texture atlas.

See `Texture.load` to read more details.

Related Nene documentation:
* [Texture.load](texture.md#textureload)

### TextureAtlas:draw_sub_texture

```lua
function TextureAtlas:draw_sub_texture(
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

Draws a certain sub-texture from `column` and `row` coordinates at certain `position`.

You can optionally pass a `tint` argument that will change the sub-texture's color.

Just as in `Texture.draw`, you can also optionally
pass `angle`, `rotation_center`, `flip_horizontal` and `flip_vertical` arguments.

> Note: `column` and `row` starts at `0`, not `1`.

Related Nene documentation:
* [TextureAtlas.draw_nth_sub_texture](#sub_texturesetdraw_nth_sub_texture)
* [Texture.draw](texture.md#texturedraw)
* [Color](color.md#color)
* [Math.Grid.get_rect](math/grid.md#gridget_rect)
* [Math.Vec2](math/vec2.md#vec2)

### TextureAtlas:draw_nth_sub_texture

```lua
function TextureAtlas:draw_nth_sub_texture(
  n: uint16,
  position: Vec2,
  tint: facultative(Color),
  angle: facultative(number),
  rotation_center: facultative(Vec2),
  flip_horizontal: facultative(boolean),
  flip_vertical: facultative(boolean)
)
```

Draws a certain `n`th sub-texture at certain `position`.

You can optionally pass a `tint` argument that will change the sub-texture's color.

Just as in `Texture.draw`, you can also optionally
pass `angle`, `rotation_center`, `flip_horizontal` and `flip_vertical` arguments.

> Note: The `n`th value starts at `0`, not `1`.

Related Nene documentation:
* [TextureAtlas.draw_sub_texture](#sub_texturesetdraw_sub_texture)
* [Math.Grid.get_nth_cell_column_row](math/grid.md#gridget_nth_cell_column_row)
* [Color](color.md#color)
* [Math.Vec2](math/vec2.md#vec2)

---