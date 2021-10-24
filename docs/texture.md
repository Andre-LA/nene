### Summary
* [Texture](#texture)
* [Texture:get](#textureget)
* [Texture:destroy](#texturedestroy)
* [Texture:apply_sdltex](#textureapply_sdltex)
* [Texture.new](#texturenew)
* [Texture.create_texture](#texturecreate_texture)
* [Texture.load](#textureload)
* [Texture:draw](#texturedraw)

### Texture

```lua
global Texture = @record{
  _data: *SDL_Texture,  -- internal data, don't use it directly, use methods instead
  width: uinteger,      -- width of the texture in pixels
  height: uinteger,     -- height of the texture in pixels
}
```

Wraps an internal (SDL) Texture

### Texture:get

```lua
function Texture:get(): *SDL_Texture
```

It checks if the internal data is `nilptr` and then returns it.

Related SDL documentation:
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)

### Texture:destroy

```lua
function Texture:destroy()
```

Free internal data and resets to zeroed state.

Related SDLWrapper documentation:
* [SDLWrapper.destroy_texture](wrappers/sdl.md#sdlwrapperdestroy_texture)

### Texture:apply_sdltex

```lua
function Texture:apply_sdltex(new_tex: *SDL_Texture)
```

Applies a new internal texture (with a `pointer(SDL_Texture)`).

If there is non-`nilptr` internal texture, then it's freed before applying this new internal texture.

It also updates `width` and `height` fields.

Related Nene documentation:
* [SDLWrapper.query_texture_size](wrappers/sdl.md#sdlwrapperquery_texture_size)
* [Texture.destroy](#texturedestroy)

### Texture.new

```lua
function Texture.new(tex: *SDL_Texture): Texture
```

Returns an initialized `Texture` with the given `tex` applied.

Related Nene documentation:
* [Texture.apply_sdltex](#textureapply_sdltex)

### Texture.create_texture

```lua
function Texture.create_texture(nene: Nene, width: cint, height: cint, format: facultative(SDL_PixelFormatEnum), access: facultative(SDL_TextureAccess)): Texture
```

Creates a `Texture` from `Nene.create_sdl_texture` using the given `access` and `format`.

`format` and `access` are optional.

By default, `format` is SDL_PIXELFORMAT_RGBA8888 and access is `SDL_TEXTUREACCESS_STATIC`.

Related Nene documentation:
* [Nene.create_sdl_texture](core.md#nenecreate_sdl_texture)

### Texture.load

```lua
function Texture.load(nene: Nene, filepath: cstring): (Texture, boolean)
```

Loads an image file and returns a Texture and an ok status.

If the operations fails, the ok status will be `false` and uninitialized texture.

Related SDLWrapper documentation:
* [ImgWrapper.img_load](wrappers/img.md#imgwrapperimg_load)
* [SDLWrapper.create_texture_from_surface](wrappers/sdl.md#sdlwrappercreate_texture_from_surface)
* [SDLWrapper.free_surface](wrappers/sdl.md#sdlwrapperfree_surface)

### Texture:draw

```lua
function Texture:draw(
  nene: Nene,
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
* [Color](colors.md#color)
* [SDLWrapper.set_texture_color_modulation](wrappers/sdl.md#sdlwrapperset_texture_color_modulation)
* [Nene.render_copy](core.md#nenerender_copy)
* [Math.Rect](math.md#mathrect)
* [Math.Vec2](math.md#mathvec2)

---
