# nene/wrappers/ttf.nelua
## Nene.TTFWrapper
```lua
global Nene.TTFWrapper = @record{}
```


---

## warn_msg
```lua
local function warn_msg(fn_name, msg)
```


---

## Nene.TTFWrapper.ttf_init
```lua
function Nene.TTFWrapper.ttf_init(): boolean
```
Wrapper of `TTF_Init` 
 
Initialize SDL_ttf library. 
This function doesn't check if `Nene` is initialized. 
 
Related SDL_ttf documentation: 
* [TTF_Init](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_8.html)

---

## Nene.TTFWrapper.ttf_quit
```lua
function Nene.TTFWrapper.ttf_quit()
```
Wrapper of `TTF_Quit` 
 
Shutdown and cleanup SDL_ttf library. 
 
Related SDL documentation: 
* [TTF_Quit](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_10.html)

---

## Nene.TTFWrapper.ttf_render_utf8_solid
```lua
function Nene.TTFWrapper.ttf_render_utf8_solid(font: *TTF_Font, text: string, color: SDL_Color): (*SDL_Surface, boolean)
```
Wrapper of `TTF_RenderUTF8_Solid`. 
 
Related SDL_TTF documentation: 
* [TTF_RenderUTF8_Solid](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_44.html)

---

## Nene.TTFWrapper.open_font
```lua
function Nene.TTFWrapper.open_font(file: cstring, ptsize: cint): (*TTF_Font, boolean)
```
Wrapper of `TTF_OpenFont`. 
 
Load `file` for use as a font with `ptsize`. 
 
Related SDL_TTF documentation: 
* [TTF_OpenFont](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_14.html)

---

## Nene.TTFWrapper.close_font
```lua
function Nene.TTFWrapper.close_font(font: *TTF_Font)
```
Wrapper of `TTF_CloseFont`. 
 
Free the memory used by `font` and free `font` as well. 
 
Related SDL_TTF documentation: 
* [TTF_CloseFont](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_18.html)

---
