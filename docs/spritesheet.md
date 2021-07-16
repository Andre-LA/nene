### SpriteSheet

```lua
global SpriteSheet = @record{
  grid: Grid,              -- spritesheet grid
  sprites_per_line: isize, -- how many sprites fit in a line of this grid
  animations: hashmap(string, AnimationRange) -- hashmap of animations, maps animation names to animation ranges.
}
```

The `SpriteSheet` module is used to make animated sprites.

### SpriteSheet:destroy

```lua
function SpriteSheet:destroy()
```

destroyes the Spritesheet, freeing it's memory.

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
function SpriteSheet:draw(nene: Nene, spritesheet_texture: Texture, animation_name: string, animation_index: isize, color: facultative(Color))
```

draw the sprite from the spritesheet

---
