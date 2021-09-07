### Summary
* [TTFWrapper](#ttfwrapper)
* [TTFWrapper.ttf_init](#ttfwrapperttf_init)
* [TTFWrapper.ttf_quit](#ttfwrapperttf_quit)
* [TTFWrapper.ttf_render_utf8_solid](#ttfwrapperttf_render_utf8_solid)
* [TTFWrapper.open_font](#ttfwrapperopen_font)
* [TTFWrapper.close_font](#ttfwrapperclose_font)

### TTFWrapper

```lua
global TTFWrapper = @record{}
```



### TTFWrapper.ttf_init

```lua
function TTFWrapper.ttf_init(): boolean
```

Wrapper of `TTF_Init`

Initialize SDL_ttf library.

Related SDL_ttf documentation:
* [TTF_Init](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_8.html)

### TTFWrapper.ttf_quit

```lua
function TTFWrapper.ttf_quit()
```

Wrapper of `TTF_Quit`

Shutdown and cleanup SDL_ttf library.

Related SDL documentation:
* [TTF_Quit](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_10.html)

### TTFWrapper.ttf_render_utf8_solid

```lua
function TTFWrapper.ttf_render_utf8_solid(font: *TTF_Font, text: string, color: SDL_Color): (*SDL_Surface, boolean)
```

Wrapper of `TTF_RenderUTF8_Solid`.

Related SDL_TTF documentation:
* [TTF_RenderUTF8_Solid](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_44.html)

### TTFWrapper.open_font

```lua
function TTFWrapper.open_font(file: cstring, ptsize: cint): (*TTF_Font, boolean)
```

Wrapper of `TTF_OpenFont`.

Load `file` for use as a font with `ptsize`.

Related SDL_TTF documentation:
* [TTF_OpenFont](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_14.html)

### TTFWrapper.close_font

```lua
function TTFWrapper.close_font(font: *TTF_Font)
```

Wrapper of `TTF_CloseFont`.

Free the memory used by `font` and free `font` as well.

Related SDL_TTF documentation:
* [TTF_CloseFont](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_18.html)

---
