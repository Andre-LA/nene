### Summary
* [Texture](#texture)
* [Texture.Access](#textureaccess)
* [Texture.Modulate](#texturemodulate)
* [Texture:get_raw](#textureget_raw)
* [Texture:destroy](#texturedestroy)
* [Texture:__close](#texture__close)
* [Texture:apply_raw](#textureapply_raw)
* [Texture.init](#textureinit)
* [Texture.create_texture](#texturecreate_texture)
* [Texture.load](#textureload)
* [Texture:draw](#texturedraw)

## texture

The Texture module.

### Texture

```lua
local Texture = @record{
  _data: *SDL_Texture,         -- internal data, don't use it directly, use methods instead
  width: cint,                 -- width of the texture in pixels
  height: cint,                -- height of the texture in pixels
  format: SDL_PixelFormatEnum, -- texture pixel format
  access: SDL_TextureAccess,   -- texture access pattern
}
```

Wraps an internal (SDL) Texture

### Texture.Access

```lua
global Texture.Access = @enum(cint){
  Static = 0,
  Streaming = 1,
  Target = 2
}
```

"An enumeration of texture access patterns"

It's actually a copy of SDL_TextureAccess enum

Related SDL documentation:
  * [SDL_TextureAccess](https://wiki.libsdl.org/SDL_TextureAccess)

### Texture.Modulate

```lua
global Texture.Modulate = @enum(cint){
  None = 0,
  Color = 1,
  Alpha = 2
}
```

"An enumeration of the texture channel modulation"

It's actually a copy of SDL_TextureModulate enum

Related SDL documentation:
  * [SDL_TextureModulate](https://wiki.libsdl.org/SDL_TextureModulate)

### Texture:get_raw

```lua
function Texture:get_raw(): *SDL_Texture
```

Returns the `pointer(SDL_Texture)` internal data.

It also [`check`](https://nelua.io/libraries/#check)s if the internal data is `nilptr`.

Related SDL documentation:
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)

### Texture:destroy

```lua
function Texture:destroy()
```

Free internal data and resets to zeroed state.

Related SDL2 documentation:
* [SDL_DestroyTexture](https://wiki.libsdl.org/SDL_DestroyTexture)

### Texture:__close

```lua
function Texture:__close()
```

Effectively the same as `destroy`, called when a to-be-closed variable goes out of scope.

### Texture:apply_raw

```lua
function Texture:apply_raw(new_tex: *SDL_Texture): (boolean)
```

Applies a new internal texture (with a `pointer(SDL_Texture)`).

If there is non-`nilptr` internal texture, then it's freed before applying this new internal texture.

It also updates `width`, `height`, `format` and `access` fields.

Returns an `ok` status with `true` value if the texture query is successful.

Related Nene documentation:
* [Texture.destroy](#texturedestroy)

Related SDL documentation:
* [SDL_QueryTexture](https://wiki.libsdl.org/SDL_QueryTexture)

### Texture.init

```lua
function Texture.init(raw_tex: *SDL_Texture): Texture
```

Returns an initialized `Texture` with the given `raw_tex` applied.

Related Nene documentation:
* [Texture.apply_raw](#textureapply_raw)

### Texture.create_texture

```lua
function Texture.create_texture(width: cint, height: cint, format: facultative(SDL_PixelFormatEnum), access: facultative(SDL_TextureAccess)): (boolean, Texture)
```

Creates a `Texture` using the given `access` and `format`.

`format` and `access` are optional.

By default, `format` is SDL_PIXELFORMAT_RGBA8888 and access is `SDL_TEXTUREACCESS_STATIC`.

Related Nene documentation:
* [Nene.create_raw_texture](init.md#nenecreate_raw_texture)

Related SDL2 documentation:
* [SDL_PixelFormatEnum](https://wiki.libsdl.org/SDL_PixelFormatEnum)
* [SDL_TextureAccess](https://wiki.libsdl.org/SDL_TextureAccess)
* [SDL_CreateTexture](https://wiki.libsdl.org/SDL_CreateTexture)

### Texture.load

```lua
function Texture.load(filepath: cstring): (boolean, Texture)
```

Loads an image file and returns an ok status and a `Texture` from the loaded image.

Returns an `ok` status with `true` value and the created texture if successful.

If the operations fails, a warning is sent and return will be a `false` ok status and an uninitialized texture.

Related SDL2 documentation:
* [IMG_Load](https://www.libsdl.org/projects/SDL_image/docs/SDL_image_11.html)
* [SDL_CreateTextureFromSurface](https://wiki.libsdl.org/SDL_CreateTextureFromSurface)
* [SDL_FreeSurface](https://wiki.libsdl.org/SDL_FreeSurface)

### Texture:draw

```lua
function Texture:draw(
  color: facultative(Color),
  source: facultative(Rect),
  destination: overload(Vec2, Rect, niltype),
  angle: facultative(number),
  center: facultative(Vec2),
  flip_horizontal: facultative(boolean),
  flip_vertical: facultative(boolean)
)
```

Draw the texture at the `destination` (which can be a position, a rectangle, or `nil` which will draw at the whole screen),
you can optionally pass the `source` rectangle if you want to draw a slice of the texture.

A `color` tint can be optionally passed, which is white by default.

Related Nene documentation:
* [Nene.set_raw_texture_color_mod](init.md#neneset_raw_texture_color_mod)
* [Nene.render_copy](init.md#nenerender_copy)
* [Color](color.md#color)
* [Math.Rect](math/rect.md#rect)
* [Math.Vec2](math/vec2.md#vec2)

---
