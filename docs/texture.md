# nene/texture.nelua
## Texture
```lua
local Texture = @record{
  _data: *SDL_Texture,  -- internal data, don't use it, use methods `get` and `apply_sdltex` instead
  initialized: boolean, -- internal data, used to check if the texture is initialized
  width: uinteger,      -- width of the texture in pixels
  height: uinteger,     -- height of the texture in pixels
}
global Nene.Texture = @Texture
```
just a wraps a `pointer(SDL_Texture)`, the `_data` field should never be directly accessed, 
use methods instead, which do `check`s. 
 
Related SDL documentation: 
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)

---

## Texture:get
```lua
function Texture:get(): *SDL_Texture
```
get the internal data 
 
Related SDL documentation: 
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)

---

## Texture:destroy
```lua
function Texture:destroy()
```
free the internal data 
 
Related SDL documentation: 
* [SDL_DestroyTexture](https://wiki.libsdl.org/SDL_DestroyTexture)

---

## Texture:draw
```lua
function Texture:draw(nene_core: Nene.Core, color: Color, source: facultative(Rect), destination: overload(Vec2, Rect, niltype))
```
draw the texture with a `color` tint at the `destination` (which can be a position, a rectangle, or `nil` which will draw at the whole screen), 
you can optionally pass the `source` rectangle if you want to draw a slice of the texture. 
Note that you need pass an initialized `Nene.Core`. 
 
Related Nene documentation: 
* [Nene.Core.set_texture_color_modulation](core_state.md#nenecoreset_texture_color_modulation) 
* [Nene.Core.render_copy](core_state.md#nenecorerender_copy)

---

## Texture:apply_sdltex
```lua
function Texture:apply_sdltex(new_tex: *SDL_Texture)
```
Applies a new internal texture (with a `pointer(SDL_Texture)`). 
If the texture is initialized, then it will destroy itself before applying this new SDL_Texture. 
It also updates the information fields (like `width` and `height`). 
 
Related Nene documentation: 
* [Nene.Core.query_texture_size](core_state.md#nenecorequery_texture_size)

---

## Texture.new
```lua
function Texture.new(tex: *SDL_Texture): Texture
```
Returns a `Nene.Texture` with the given `tex` applied.

---
