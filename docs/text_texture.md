### Summary
* [TextTexture](#texttexture)
* [TextTexture:destroy](#texttexturedestroy)
* [TextTexture:update_text](#texttextureupdate_text)
* [TextTexture:draw](#texttexturedraw)
* [TextTexture.new](#texttexturenew)

### TextTexture

```lua
global TextTexture = @record{
  texture: Texture,
  text: string,
}
```

**Owns** an internal `Texture` with a text in it, this text is also stored as a string on the `text` field.
Use `update_text` method to easily to update both `text` and `texture` with this new text.

Related Nene documentation:
* [Texture](texture.md#texture)

### TextTexture:destroy

```lua
function TextTexture:destroy()
```

Destroy the TextTexture and resets to zeroed state.

Related Nene documentation:
* [Texture.destroy](texture.md#texturedestroy)

### TextTexture:update_text

```lua
function TextTexture:update_text(nene: Nene, text: string, font: Font, color: facultative(Color))
```

Updates the text texture with a new `text`, with the given `font`.

You can optionally also pass a `color`, which by default is white.

Related Nene documentation:
* [Nene.create_texture_from_surface](core.md#nenecreate_texture_from_surface)
* [Texture.apply_sdltex](texture.md#textureapply_sdltex)

Related SDL and SDL_TTF documentation:
* [TTFWrapper.ttf_render_utf8_solid](wrappers/ttf.md#ttfwrapperttf_render_utf8_solid)
* [SDLWrapper.create_texture_from_surface](wrappers/sdl.md#sdlwrappercreate_texture_from_surface)
* [SDLWrapper.free_surface](wrappers/sdl.md#sdlwrapperfree_surface)

### TextTexture:draw

```lua
function TextTexture:draw(nene: Nene, position: Vec2, color: facultative(Color))
```

Draw the texture at the given `position`.

A `color` tint can be passed optionally, it's white by default.

Related Nene documentation:
* [Texture.draw](texture.md#texturedraw)
* [Math.Vec2](math.md#mathvec2)
* [Math.Rect](math.md#mathrect)
* [Color](colors.md#color)

### TextTexture.new

```lua
function TextTexture.new(nene: Nene, initial_text: string, font: Font, color: facultative(Color)): TextTexture
```

Creates a new initialized `TextTexture` with an `initial_text` applied with the given `font`.

A color can be passed optionally, is white by default.

Related Nene documentation:
* [TextTexture.update_text](#texttextureupdate_text)

---
