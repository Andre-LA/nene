### Summary
* [Color](#color)
* [Color.Palette](#colorpalette)

### Color

```lua
global Color = @SDL_Color
```

`Nene.Color` is an alias of `SDL_Color`, see it's documentation for more information.

Related SDL documentation:
* [SDL_Color](https://wiki.libsdl.org/SDL_Color)

### Color.Palette

```lua
global Color.Palette: record{
  black: Color,
  white: Color,
  red: Color,
  green: Color,
  blue: Color,
  yellow: Color,
  cyan: Color,
  bg: Color,
}
```

The general color pallete of Nene

> Note: This is not related to [`SDL_Pallete`](https://wiki.libsdl.org/SDL_Palette) data structure.

---
