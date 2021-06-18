# nene/text_texture.nelua
## Nene.TextTexture
```lua
global Nene.TextTexture = @record{
  texture: Nene.Texture,
  text: string,
}
```
Owns a internal `Nene.Texture` with a text, this text is also stored as a string on the `text` field. 
Use `update_text` method to easily to update both `text` and the texture with a new text. 
 
Related Nene documentation: 
* [Nene.Texture](texture.md#nenetexture)

---

## Nene.TextTexture:destroy
```lua
function Nene.TextTexture:destroy()
```
Destroy the TextTexture 
 
Related Nene documentation: 
* [Nene.Texture.destroy](texture.md#nenetexturedestroy)

---

## Nene.TextTexture:update_text
```lua
function Nene.TextTexture:update_text(nene_core: Nene.Core, text: string, color: Nene.Color, font: Nene.Font)
```
Updates the texture with a new `text`, with the given `font`. 
 
Related Nene documentation: 
* [Nene.Texture.apply_sdltex](texture.md#nenetextureapply_sdltex) 
 
Related SDL and SDL_TTF documentation: 
* [TTF_RenderUTF8_Solid](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_44.html) 
* [SDL_CreateTextureFromSurface](https://wiki.libsdl.org/SDL_CreateTextureFromSurface) 
* [SDL_FreeSurface](https://wiki.libsdl.org/SDL_FreeSurface)

---

## Nene.TextTexture:draw
```lua
function Nene.TextTexture:draw(nene_core: Nene.Core, pos: Nene.Math.Vec2, color: Nene.Color)
```
Draw the texture at the given `pos`ition with the given `color` tint. 
 
Related Nene documentation: 
* [Nene.Texture.draw](texture.md#nenetexturedraw)

---

## Nene.TextTexture.new
```lua
function Nene.TextTexture.new(nene_core: Nene.Core, initial_text: string, color: Nene.Color, font: Nene.Font): Nene.TextTexture
```
Creates a new initialized `Nene.TextTexture` with an `initial_text` with the given `color` with the given `font`. 
 
Related Nene documentation: 
* [Nene.TextTexture.update_text](#nenetexttextureupdate_text)

---
