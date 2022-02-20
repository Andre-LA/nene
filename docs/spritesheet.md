### Summary
* [SpriteSheet](#spritesheet)
* [SpriteSheet:get_sprite_column_row](#spritesheetget_sprite_column_row)
* [SpriteSheet:get_source_rect](#spritesheetget_source_rect)
* [SpriteSheet:draw](#spritesheetdraw)

## spritesheet

The spritesheet module, it makes easier to draw single sprites
from a [spritesheet](https://en.wikipedia.org/wiki/Texture_atlas).

### SpriteSheet

```lua
local SpriteSheet = @record{
  grid: Grid,              -- spritesheet grid
  sprites_per_line: isize, -- how many sprites fit in a line of this grid
}
```

The `SpriteSheet` module is used to use and draw sprites.

### SpriteSheet:get_sprite_column_row

```lua
function SpriteSheet:get_sprite_column_row(index: isize): (isize, isize)
```

Get the column and row of the grid from an index of this spritesheet.

### SpriteSheet:get_source_rect

```lua
function SpriteSheet:get_source_rect(column: isize, row: isize)
```

Get the source get from the spritesheet at the column and row.

### SpriteSheet:draw

```lua
function SpriteSheet:draw(
  position: Vec2,
  spritesheet_texture: Texture,
  sprite_index: isize,
  color: facultative(Color),
  angle: facultative(number),
  center: facultative(Vec2),
  flip_horizontal: facultative(boolean),
  flip_vertical: facultative(boolean)
)
```

Draw the sprite from the spritesheet

---
