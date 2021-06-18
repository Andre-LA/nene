# nene/sdl2_ttf.nelua
## TTF_Linked_Version
```lua
global function TTF_Linked_Version(): *SDL_version <cimport, nodecl> end
```


---

## TTF_ByteSwappedUNICODE
```lua
global function TTF_ByteSwappedUNICODE(swapped: cint) <cimport, nodecl> end
```


---

## TTF_Init
```lua
global TTF_Font: type <cimport, nodecl, forwarddecl> = @record{}
global function TTF_Init(): cint <cimport, nodecl> end
```


---

## TTF_OpenFont
```lua
global function TTF_OpenFont(file: cstring, ptsize: cint): *TTF_Font <cimport, nodecl> end
```


---

## TTF_OpenFontIndex
```lua
global function TTF_OpenFontIndex(file: cstring, ptsize: cint, index: clong): *TTF_Font <cimport, nodecl> end
```


---

## TTF_OpenFontRW
```lua
global function TTF_OpenFontRW(src: *SDL_RWops, freesrc: cint, ptsize: cint): *TTF_Font <cimport, nodecl> end
```


---

## TTF_OpenFontIndexRW
```lua
global function TTF_OpenFontIndexRW(src: *SDL_RWops, freesrc: cint, ptsize: cint, index: clong): *TTF_Font <cimport, nodecl> end
```


---

## TTF_GetFontStyle
```lua
global function TTF_GetFontStyle(font: *TTF_Font): cint <cimport, nodecl> end
```


---

## TTF_SetFontStyle
```lua
global function TTF_SetFontStyle(font: *TTF_Font, style: cint) <cimport, nodecl> end
```


---

## TTF_GetFontOutline
```lua
global function TTF_GetFontOutline(font: *TTF_Font): cint <cimport, nodecl> end
```


---

## TTF_SetFontOutline
```lua
global function TTF_SetFontOutline(font: *TTF_Font, outline: cint) <cimport, nodecl> end
```


---

## TTF_GetFontHinting
```lua
global function TTF_GetFontHinting(font: *TTF_Font): cint <cimport, nodecl> end
```


---

## TTF_SetFontHinting
```lua
global function TTF_SetFontHinting(font: *TTF_Font, hinting: cint) <cimport, nodecl> end
```


---

## TTF_FontHeight
```lua
global function TTF_FontHeight(font: *TTF_Font): cint <cimport, nodecl> end
```


---

## TTF_FontAscent
```lua
global function TTF_FontAscent(font: *TTF_Font): cint <cimport, nodecl> end
```


---

## TTF_FontDescent
```lua
global function TTF_FontDescent(font: *TTF_Font): cint <cimport, nodecl> end
```


---

## TTF_FontLineSkip
```lua
global function TTF_FontLineSkip(font: *TTF_Font): cint <cimport, nodecl> end
```


---

## TTF_GetFontKerning
```lua
global function TTF_GetFontKerning(font: *TTF_Font): cint <cimport, nodecl> end
```


---

## TTF_SetFontKerning
```lua
global function TTF_SetFontKerning(font: *TTF_Font, allowed: cint) <cimport, nodecl> end
```


---

## TTF_FontFaces
```lua
global function TTF_FontFaces(font: *TTF_Font): clong <cimport, nodecl> end
```


---

## TTF_FontFaceIsFixedWidth
```lua
global function TTF_FontFaceIsFixedWidth(font: *TTF_Font): cint <cimport, nodecl> end
```


---

## TTF_FontFaceFamilyName
```lua
global function TTF_FontFaceFamilyName(font: *TTF_Font): cstring <cimport, nodecl> end
```


---

## TTF_FontFaceStyleName
```lua
global function TTF_FontFaceStyleName(font: *TTF_Font): cstring <cimport, nodecl> end
```


---

## TTF_GlyphIsProvided
```lua
global function TTF_GlyphIsProvided(font: *TTF_Font, ch: uint16): cint <cimport, nodecl> end
```


---

## TTF_GlyphMetrics
```lua
global function TTF_GlyphMetrics(font: *TTF_Font, ch: uint16, minx: *cint, maxx: *cint, miny: *cint, maxy: *cint, advance: *cint): cint <cimport, nodecl> end
```


---

## TTF_SizeText
```lua
global function TTF_SizeText(font: *TTF_Font, text: cstring, w: *cint, h: *cint): cint <cimport, nodecl> end
```


---

## TTF_SizeUTF8
```lua
global function TTF_SizeUTF8(font: *TTF_Font, text: cstring, w: *cint, h: *cint): cint <cimport, nodecl> end
```


---

## TTF_SizeUNICODE
```lua
global function TTF_SizeUNICODE(font: *TTF_Font, text: *uint16, w: *cint, h: *cint): cint <cimport, nodecl> end
```


---

## TTF_RenderText_Solid
```lua
global function TTF_RenderText_Solid(font: *TTF_Font, text: cstring, fg: SDL_Color): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderUTF8_Solid
```lua
global function TTF_RenderUTF8_Solid(font: *TTF_Font, text: cstring, fg: SDL_Color): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderUNICODE_Solid
```lua
global function TTF_RenderUNICODE_Solid(font: *TTF_Font, text: *uint16, fg: SDL_Color): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderGlyph_Solid
```lua
global function TTF_RenderGlyph_Solid(font: *TTF_Font, ch: uint16, fg: SDL_Color): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderText_Shaded
```lua
global function TTF_RenderText_Shaded(font: *TTF_Font, text: cstring, fg: SDL_Color, bg: SDL_Color): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderUTF8_Shaded
```lua
global function TTF_RenderUTF8_Shaded(font: *TTF_Font, text: cstring, fg: SDL_Color, bg: SDL_Color): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderUNICODE_Shaded
```lua
global function TTF_RenderUNICODE_Shaded(font: *TTF_Font, text: *uint16, fg: SDL_Color, bg: SDL_Color): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderGlyph_Shaded
```lua
global function TTF_RenderGlyph_Shaded(font: *TTF_Font, ch: uint16, fg: SDL_Color, bg: SDL_Color): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderText_Blended
```lua
global function TTF_RenderText_Blended(font: *TTF_Font, text: cstring, fg: SDL_Color): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderUTF8_Blended
```lua
global function TTF_RenderUTF8_Blended(font: *TTF_Font, text: cstring, fg: SDL_Color): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderUNICODE_Blended
```lua
global function TTF_RenderUNICODE_Blended(font: *TTF_Font, text: *uint16, fg: SDL_Color): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderText_Blended_Wrapped
```lua
global function TTF_RenderText_Blended_Wrapped(font: *TTF_Font, text: cstring, fg: SDL_Color, wrapLength: uint32): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderUTF8_Blended_Wrapped
```lua
global function TTF_RenderUTF8_Blended_Wrapped(font: *TTF_Font, text: cstring, fg: SDL_Color, wrapLength: uint32): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderUNICODE_Blended_Wrapped
```lua
global function TTF_RenderUNICODE_Blended_Wrapped(font: *TTF_Font, text: *uint16, fg: SDL_Color, wrapLength: uint32): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_RenderGlyph_Blended
```lua
global function TTF_RenderGlyph_Blended(font: *TTF_Font, ch: uint16, fg: SDL_Color): *SDL_Surface <cimport, nodecl> end
```


---

## TTF_CloseFont
```lua
global function TTF_CloseFont(font: *TTF_Font) <cimport, nodecl> end
```


---

## TTF_Quit
```lua
global function TTF_Quit() <cimport, nodecl> end
```


---

## TTF_WasInit
```lua
global function TTF_WasInit(): cint <cimport, nodecl> end
```


---

## TTF_GetFontKerningSize
```lua
global function TTF_GetFontKerningSize(font: *TTF_Font, prev_index: cint, index: cint): cint <cimport, nodecl> end
```


---

## TTF_GetFontKerningSizeGlyphs
```lua
global function TTF_GetFontKerningSizeGlyphs(font: *TTF_Font, previous_ch: uint16, ch: uint16): cint <cimport, nodecl> end
```


---

## SDL_TTF_VERSION_ATLEAST
```lua
global function SDL_TTF_VERSION_ATLEAST(x: cint, y: cint, z: cint): SDL_bool <cimport, nodecl> end
```


---

## SDL_TTF_VERSION
```lua
global function SDL_TTF_VERSION(x: *SDL_version) <cimport, nodecl> end
```


---

## TTF_SetError
```lua
global function TTF_SetError(fmt: cstring, ...: cvarargs): cint <cimport, nodecl> end
```


---

## TTF_GetError
```lua
global function TTF_GetError(): cstring <cimport, nodecl> end
```


---
