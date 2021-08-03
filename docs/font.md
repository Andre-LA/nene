### Font

```lua
global Font = @record{
  _data: *TTF_Font,
}
```

Wraps a (SDL_TTF) font

### Font:get

```lua
function Font:get(): *TTF_Font
```

It checks if the internal data is `nilptr` and then returns it.

Related TTFWrapper documentation:
* [TTF_Font](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_56.html#SEC56)

### Font.load

```lua
function Font.load(filename: string, ptsize: cint): (Font, boolean)
```

try to load a font from a file.

it returns:
* `Font` value, with internal data properly initialized if load is successful
* a boolean which is `true` when the load succeeds.

Related TTFWrapper documentation:
* [TTFWrapper.open_font](wrappers/ttf.md#ttfwrapperopen_font)

### Font:destroy

```lua
function Font:destroy()
```

Destroy the font and resets to zeroed state.

Related TTFWrapper documentation:
* [TTFWrapper.close_font](wrappers/ttf.md#ttfwrapperclose_font)

---
