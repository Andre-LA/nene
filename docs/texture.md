# nene/texture.nelua
## Nene.Texture
```lua
global Nene.Texture = @record{
  _data: *SDL_Texture,  -- internal data, don't use it, use methods `get` and `apply_sdltex` instead
  initialized: boolean, -- internal data, used to check if the texture is initialized
  width: uinteger,      -- width of the texture in pixels
  height: uinteger,     -- height of the texture in pixels
}
```
just a wraps a `pointer(SDL_Texture)`, the `_data` field should never be directly accessed, 
use methods instead, which do `check`s. 
 
Related SDL documentation: 
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)

## Nene.Texture:get
```lua
function Nene.Texture:get(): *SDL_Texture
```
get the internal data 
 
Related SDL documentation: 
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)

## Nene.Texture:destroy
```lua
function Nene.Texture:destroy()
```
free the internal data 
 
Related SDL documentation: 
* [SDL_DestroyTexture](https://wiki.libsdl.org/SDL_DestroyTexture)

## Nene.Texture:draw
```lua
function Nene.Texture:draw(nene_core: Nene.Core, color: Nene.Color, source: facultative(Nene.Math.Rect), destination: overload(Nene.Math.Vec2, Nene.Math.Rect, niltype))
```
draw the texture with a `color` tint at the `destination` (which can be a position, a rectangle, or `nil` which will draw at the whole screen), 
you can optionally pass the `source` rectangle if you want to draw a slice of the texture. 
Note that you need pass an initialized `Nene.Core`. 
 
Related Nene documentation: 
* [Nene.Core.set_texture_color_modulation](core_state.md#nenecoreset_texture_color_modulation) 
* [Nene.Core.render_copy](core_state.md#nenecorerender_copy)

## Nene.Texture:apply_sdltex
```lua
function Nene.Texture:apply_sdltex(new_tex: *SDL_Texture)
```
Applies a new internal texture (with a `pointer(SDL_Texture)`). 
If the texture is initialized, then it will destroy itself before applying this new SDL_Texture. 
It also updates the information fields (like `width` and `height`). 
 
Related Nene documentation: 
* [Nene.Core.query_texture_size](core_state.md#nenecorequery_texture_size)

## Nene.Texture.new
```lua
function Nene.Texture.new(tex: *SDL_Texture): Nene.Texture
```
Returns a `Nene.Texture` with the given `tex` applied.
