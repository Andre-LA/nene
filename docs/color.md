### Summary
* [Color](#color)
* [Color.Palette](#colorpalette)

## color

The color module, it's an alias for SDL_Color, contains rgba fields with one byte each,
in other words, the range of each channel are [0, 255], not [0, 1].

The colors can also be set using two hexadecimal values, like in HTML colors.

### Color

```lua
local Color = @SDL_Color
```

`Nene.Color` is an alias of `SDL_Color`, see it's documentation for more information.

Related SDL documentation:
* [SDL_Color](https://wiki.libsdl.org/SDL_Color)

### Color.Palette

```lua
global Color.Palette: record{
  black: Color,  --  = { 0x00, 0x00, 0x00, 0xff }
  white: Color,  --  = { 0xff, 0xff, 0xff, 0xff }
  red: Color,    --  = { 0xff, 0x00, 0x00, 0xff }
  green: Color,  --  = { 0x00, 0xff, 0x00, 0xff }
  blue: Color,   --  = { 0x00, 0x00, 0xff, 0xff }
  yellow: Color, --  = { 0xfc, 0xea, 0x20, 0xff }
  cyan: Color,   --  = { 0x00, 0xff, 0xff, 0xff }
  bg: Color,     --  = { 0x69, 0x46, 0x6b, 0xff }
}
```

The general color pallete of Nene

> Note: This is not related to [`SDL_Pallete`](https://wiki.libsdl.org/SDL_Palette) data structure.

---
