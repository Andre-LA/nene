### Summary
* [TextTexture](#texttexture)
* [TextTexture:destroy](#texttexturedestroy)
* [TextTexture:__close](#texttexture__close)
* [TextTexture:update_text](#texttextureupdate_text)
* [TextTexture:draw](#texttexturedraw)
* [TextTexture.init](#texttextureinit)

## text_texture

The TextTexture module, it implements a record which owns a internal Texture where a text is drawn on.

### TextTexture

```lua
local TextTexture = @record{
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

### TextTexture:__close

```lua
function TextTexture:__close()
```

Effectively the same as `destroy`, called when a to-be-closed variable goes out of scope.

### TextTexture:update_text

```lua
function TextTexture:update_text(text: string, font: Font, color: facultative(Color), render_mode: facultative(string) <comptime>): boolean
```

Updates the text texture with a new UTF-8 `text`, with the given `font`.

You can optionally also pass a `color`, which by default is white.

Another optional string argument is how the renderer should render your text, two options are currently offered:
* 'solid': The default one, renders a non-antialiased text on a 8-bit surface
* 'blended': renders an antialiased text on a 32-bit surface.

Returns an `ok` status with `true` value if successful.

Related Nene documentation:
* [Nene.create_raw_texture_from_surface](init.md#nenecreate_raw_texture_from_surface)
* [Texture.apply_raw](texture.md#textureapply_raw)

Related SDL and SDL_TTF documentation:
* [TTF_RenderUTF8_Solid](https://github.com/libsdl-org/SDL_ttf/blob/9a2cb0e452a52045419c3554e4c6696a3cd0a714/SDL_ttf.h#L224-L225)
* [TTF_RenderUTF8_Blended](https://github.com/libsdl-org/SDL_ttf/blob/9a2cb0e452a52045419c3554e4c6696a3cd0a714/SDL_ttf.h#L302-L303)
* [SDL_FreeSurface](https://wiki.libsdl.org/SDL_FreeSurface)

### TextTexture:draw

```lua
function TextTexture:draw(position: Vec2, color: facultative(Color))
```

Draw the texture at the given `position`.

A `color` tint can be passed optionally, it's white by default.

Related Nene documentation:
* [Texture.draw](texture.md#texturedraw)
* [Math.Vec2](math/vec2.md#vec2)
* [Math.Rect](math/rect.md#rect)
* [Color](color.md#color)

### TextTexture.init

```lua
function TextTexture.init(initial_text: string, font: Font, color: facultative(Color), render_mode: facultative(string) <comptime>): TextTexture
```

Creates a new initialized `TextTexture` with an `initial_text` applied with the given `font`.

A color can be passed optionally, is white by default.

Related Nene documentation:
* [TextTexture.update_text](#texttextureupdate_text)

---
