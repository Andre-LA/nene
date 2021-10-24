### Summary
* [SpriteSheet](#spritesheet)
* [SpriteSheet:get_sprite_column_row](#spritesheetget_sprite_column_row)
* [SpriteSheet:get_source_rect](#spritesheetget_source_rect)
* [SpriteSheet:draw](#spritesheetdraw)

### SpriteSheet

```lua
global SpriteSheet = @record{
  grid: Grid,              -- spritesheet grid
  sprites_per_line: isize, -- how many sprites fit in a line of this grid
}
```

The `SpriteSheet` module is used to use and draw sprites.

### SpriteSheet:get_sprite_column_row

```lua
function SpriteSheet:get_sprite_column_row(index: isize): (isize, isize)
```

get the column and row of the grid from an index of this spritesheet.

### SpriteSheet:get_source_rect

```lua
function SpriteSheet:get_source_rect(column: isize, row: isize)
```

get the source get from the spritesheet at the column and row.

### SpriteSheet:draw

```lua
function SpriteSheet:draw(
  nene: Nene,
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

draw the sprite from the spritesheet

---
