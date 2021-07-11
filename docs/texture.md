### Texture

```lua
global Texture = @record{
  _data: *SDL_Texture,  -- internal data, don't use it directly, use methods instead
  width: uinteger,      -- width of the texture in pixels
  height: uinteger,     -- height of the texture in pixels
}
```

wraps an internal (SDL) Texture

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

free the internal data

Related SDL documentation:
* [SDL_DestroyTexture](https://wiki.libsdl.org/SDL_DestroyTexture)

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

### Texture:draw

```lua
function Texture:draw(nene: Nene, color: Color, source: facultative(Rect), destination: overload(Vec2, Rect, niltype))
```

Draw the texture with a `color` tint at the `destination` (which can be a position, a rectangle, or `nil` which will draw at the whole screen),
you can optionally pass the `source` rectangle if you want to draw a slice of the texture.
Note that you need pass an initialized `Core`.

Related Nene documentation:
* [Color](colors.md#color)
* [SDLWrapper.set_texture_color_modulation](wrappers/sdl.md#sdlwrapperset_texture_color_modulation)
* [Nene.render_copy](core.md#nenerender_copy)
* [Math.Rect](math.md#mathrect)
* [Math.Vec2](math.md#mathvec2)

---
