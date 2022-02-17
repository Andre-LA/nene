### Summary
* [Font](#font)
* [Font.GlyphMetrics](#fontglyphmetrics)
* [Font:get_raw](#fontget_raw)
* [Font.load](#fontload)
* [Font:get_glyph_metrics](#fontget_glyph_metrics)
* [Font:get_height](#fontget_height)
* [Font:get_ascent](#fontget_ascent)
* [Font:get_descent](#fontget_descent)
* [Font:get_line_skip](#fontget_line_skip)
* [Font:get_text_dimensions](#fontget_text_dimensions)
* [Font:is_monospaced](#fontis_monospaced)
* [Font:destroy](#fontdestroy)
* [Font:__close](#font__close)

### Font

```lua
local Font = @record{
  _data: *TTF_Font,
}
```

Wraps a (SDL_TTF) font

### Font.GlyphMetrics

```lua
global Font.GlyphMetrics = @record{
  minx: cint, maxx: cint,
  miny: cint, maxy: cint,
  advance: cint
}
```



### Font:get_raw

```lua
function Font:get_raw(): *TTF_Font
```

Returns the `pointer(TTF_Font)` internal data.

It also [`check`](https://nelua.io/libraries/#check)s if the internal data is `nilptr`.

Related TTF documentation:
* [TTF_Font](https://github.com/libsdl-org/SDL_ttf/blob/9a2cb0e452a52045419c3554e4c6696a3cd0a714/SDL_ttf.h#L107-L108)

### Font.load

```lua
function Font.load(filename: string, ptsize: cint): (boolean, Font)
```

try to load a font from a file.

Returns an `ok` status with `true` value and an initialized font if successful.

Related TTF documentation:
* [TTF_OpenFont](https://github.com/libsdl-org/SDL_ttf/blob/9a2cb0e452a52045419c3554e4c6696a3cd0a714/SDL_ttf.h#L113-L117)

### Font:get_glyph_metrics

```lua
function Font:get_glyph_metrics(glyph: overload(uint16, uint32)): (boolean, Font.GlyphMetrics)
```

Get the metrics of a 16-bit or 32-bit glyph.

To get a better understanding about these metrics, see: http://freetype.sourceforge.net/freetype2/docs/tutorial/step2.html

Returns an `ok` status with `true` value and an initialized glyph metrics if successful.

Related TTF documentation:
* [TTF_GlyphMetrics](https://github.com/libsdl-org/SDL_ttf/blob/9a8650d82824bd8d971dd77d74b67315c4150b07/SDL_ttf.h#L187-L196)

### Font:get_height

```lua
function Font:get_height(): cint
```

Returns the maximum pixel height of all glyphs in a given font.

Related TTF documentation:
* [TTF_FontHeight](https://github.com/libsdl-org/SDL_ttf/blob/9a8650d82824bd8d971dd77d74b67315c4150b07/SDL_ttf.h#L155-L156)

### Font:get_ascent

```lua
function Font:get_ascent(): cint
```

Returns the offset from the baseline to the top of the font.

This is a positive value, relative to the baseline.

Related TTF documentation:
* [TTF_FontAscent](https://github.com/libsdl-org/SDL_ttf/blob/9a8650d82824bd8d971dd77d74b67315c4150b07/SDL_ttf.h#L158-L161)

### Font:get_descent

```lua
function Font:get_descent(): cint
```

Returns the offset from the baseline to the bottom of the font

This is a negative value, relative to the baseline.

Related TTF documentation:
* [TTF_FontDescent](https://github.com/libsdl-org/SDL_ttf/blob/9a8650d82824bd8d971dd77d74b67315c4150b07/SDL_ttf.h#L163-L166)

### Font:get_line_skip

```lua
function Font:get_line_skip(): cint
```

Get the recommended spacing between lines of text for this font

Related TTF documentation:
* [TTF_FontLineSkip](https://github.com/libsdl-org/SDL_ttf/blob/9a8650d82824bd8d971dd77d74b67315c4150b07/SDL_ttf.h#L168-L169)

### Font:get_text_dimensions

```lua
function Font:get_text_dimensions(text: string): (boolean, cint, cint)
```

Get the dimensions of a rendered string of text.

Returns an `ok` status with `true` value and the dimensions if successful, otherwise it returns `false` and zeroed dimensions.

Related TTF documentation:
* [TTF_FontLineSkip](https://github.com/libsdl-org/SDL_ttf/blob/9a8650d82824bd8d971dd77d74b67315c4150b07/SDL_ttf.h#L168-L169)

### Font:is_monospaced

```lua
function Font:is_monospaced(): boolean
```

Returns if the current font face of the font is a fixed width font (monospace).

Related TTF documentation:
* [TTF_FontFaceIsFixedWidth](https://github.com/libsdl-org/SDL_ttf/blob/9a8650d82824bd8d971dd77d74b67315c4150b07/SDL_ttf.h#L179)

### Font:destroy

```lua
function Font:destroy()
```

Destroy the font and resets to zeroed state.

Related TTF documentation:
* [TTF_CloseFont](https://github.com/libsdl-org/SDL_ttf/blob/9a2cb0e452a52045419c3554e4c6696a3cd0a714/SDL_ttf.h#L354-L355)

### Font:__close

```lua
function Font:__close()
```

Effectively the same as `destroy`, called when a to-be-closed variable goes out of scope.

---
