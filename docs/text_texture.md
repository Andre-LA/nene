### TextTexture

```lua
global TextTexture = @record{
  texture: Texture,
  text: string,
}
```

Owns a internal `Texture` with a text, this text is also stored as a string on the `text` field.
Use `update_text` method to easily to update both `text` and the texture with a new text.

Related Nene documentation:
* [Texture](texture.md#nenetexture)

### TextTexture:destroy

```lua
function TextTexture:destroy()
```

Destroy the TextTexture

Related Nene documentation:
* [Texture.destroy](texture.md#nenetexturedestroy)

### TextTexture:update_text

```lua
function TextTexture:update_text(nene: Nene, text: string, color: Color, font: Font)
```

Updates the texture with a new `text`, with the given `font`.

Related Nene documentation:
* [Texture.create_texture_from_surface](core_state.md#nenecorecreate_texture_from_surface)
* [Texture.apply_sdltex](texture.md#nenetextureapply_sdltex)

Related SDL and SDL_TTF documentation:
* [TTF_RenderUTF8_Solid](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_44.html)
* [SDL_CreateTextureFromSurface](https://wiki.libsdl.org/SDL_CreateTextureFromSurface)
* [SDL_FreeSurface](https://wiki.libsdl.org/SDL_FreeSurface)

### TextTexture:draw

```lua
function TextTexture:draw(nene: Nene, pos: Vec2, color: Color)
```

Draw the texture at the given `pos`ition with the given `color` tint.

Related Nene documentation:
* [Texture.draw](texture.md#nenetexturedraw)

### TextTexture.new

```lua
function TextTexture.new(nene: Nene, initial_text: string, color: Color, font: Font): TextTexture
```

Creates a new initialized `TextTexture` with an `initial_text` with the given `color` with the given `font`.

Related Nene documentation:
* [TextTexture.update_text](#nenetexttextureupdate_text)

---
