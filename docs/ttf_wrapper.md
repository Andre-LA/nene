# nene/ttf_wrapper.nelua
## Nene.TTFWrapper

```lua
global Nene.TTFWrapper = @record{}
```

## Nene.TTFWrapper.ttf_render_utf8_solid
Wrapper of `TTF_RenderUTF8_Solid`. 
 
Related SDL_TTF documentation: 
* [TTF_RenderUTF8_Solid](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_44.html)
```lua
function Nene.TTFWrapper.ttf_render_utf8_solid(font: *TTF_Font, text: string, color: Nene.Color): (*SDL_Surface, boolean)
```
