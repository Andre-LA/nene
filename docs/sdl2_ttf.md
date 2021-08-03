### TTF_Linked_Version

```lua
global function TTF_Linked_Version(): *SDL_version
```



### TTF_ByteSwappedUNICODE

```lua
global function TTF_ByteSwappedUNICODE(swapped: cint)
```



### TTF_Font

```lua
global TTF_Font: type = @record{}
```



### TTF_Init

```lua
global function TTF_Init(): cint
```



### TTF_OpenFont

```lua
global function TTF_OpenFont(file: cstring, ptsize: cint): *TTF_Font
```



### TTF_OpenFontIndex

```lua
global function TTF_OpenFontIndex(file: cstring, ptsize: cint, index: clong): *TTF_Font
```



### TTF_OpenFontRW

```lua
global function TTF_OpenFontRW(src: *SDL_RWops, freesrc: cint, ptsize: cint): *TTF_Font
```



### TTF_OpenFontIndexRW

```lua
global function TTF_OpenFontIndexRW(src: *SDL_RWops, freesrc: cint, ptsize: cint, index: clong): *TTF_Font
```



### TTF_GetFontStyle

```lua
global function TTF_GetFontStyle(font: *TTF_Font): cint
```



### TTF_SetFontStyle

```lua
global function TTF_SetFontStyle(font: *TTF_Font, style: cint)
```



### TTF_GetFontOutline

```lua
global function TTF_GetFontOutline(font: *TTF_Font): cint
```



### TTF_SetFontOutline

```lua
global function TTF_SetFontOutline(font: *TTF_Font, outline: cint)
```



### TTF_GetFontHinting

```lua
global function TTF_GetFontHinting(font: *TTF_Font): cint
```



### TTF_SetFontHinting

```lua
global function TTF_SetFontHinting(font: *TTF_Font, hinting: cint)
```



### TTF_FontHeight

```lua
global function TTF_FontHeight(font: *TTF_Font): cint
```



### TTF_FontAscent

```lua
global function TTF_FontAscent(font: *TTF_Font): cint
```



### TTF_FontDescent

```lua
global function TTF_FontDescent(font: *TTF_Font): cint
```



### TTF_FontLineSkip

```lua
global function TTF_FontLineSkip(font: *TTF_Font): cint
```



### TTF_GetFontKerning

```lua
global function TTF_GetFontKerning(font: *TTF_Font): cint
```



### TTF_SetFontKerning

```lua
global function TTF_SetFontKerning(font: *TTF_Font, allowed: cint)
```



### TTF_FontFaces

```lua
global function TTF_FontFaces(font: *TTF_Font): clong
```



### TTF_FontFaceIsFixedWidth

```lua
global function TTF_FontFaceIsFixedWidth(font: *TTF_Font): cint
```



### TTF_FontFaceFamilyName

```lua
global function TTF_FontFaceFamilyName(font: *TTF_Font): cstring
```



### TTF_FontFaceStyleName

```lua
global function TTF_FontFaceStyleName(font: *TTF_Font): cstring
```



### TTF_GlyphIsProvided

```lua
global function TTF_GlyphIsProvided(font: *TTF_Font, ch: uint16): cint
```



### TTF_GlyphMetrics

```lua
global function TTF_GlyphMetrics(font: *TTF_Font, ch: uint16, minx: *cint, maxx: *cint, miny: *cint, maxy: *cint, advance: *cint): cint
```



### TTF_SizeText

```lua
global function TTF_SizeText(font: *TTF_Font, text: cstring, w: *cint, h: *cint): cint
```



### TTF_SizeUTF8

```lua
global function TTF_SizeUTF8(font: *TTF_Font, text: cstring, w: *cint, h: *cint): cint
```



### TTF_SizeUNICODE

```lua
global function TTF_SizeUNICODE(font: *TTF_Font, text: *uint16, w: *cint, h: *cint): cint
```



### TTF_RenderText_Solid

```lua
global function TTF_RenderText_Solid(font: *TTF_Font, text: cstring, fg: SDL_Color): *SDL_Surface
```



### TTF_RenderUTF8_Solid

```lua
global function TTF_RenderUTF8_Solid(font: *TTF_Font, text: cstring, fg: SDL_Color): *SDL_Surface
```



### TTF_RenderUNICODE_Solid

```lua
global function TTF_RenderUNICODE_Solid(font: *TTF_Font, text: *uint16, fg: SDL_Color): *SDL_Surface
```



### TTF_RenderGlyph_Solid

```lua
global function TTF_RenderGlyph_Solid(font: *TTF_Font, ch: uint16, fg: SDL_Color): *SDL_Surface
```



### TTF_RenderText_Shaded

```lua
global function TTF_RenderText_Shaded(font: *TTF_Font, text: cstring, fg: SDL_Color, bg: SDL_Color): *SDL_Surface
```



### TTF_RenderUTF8_Shaded

```lua
global function TTF_RenderUTF8_Shaded(font: *TTF_Font, text: cstring, fg: SDL_Color, bg: SDL_Color): *SDL_Surface
```



### TTF_RenderUNICODE_Shaded

```lua
global function TTF_RenderUNICODE_Shaded(font: *TTF_Font, text: *uint16, fg: SDL_Color, bg: SDL_Color): *SDL_Surface
```



### TTF_RenderGlyph_Shaded

```lua
global function TTF_RenderGlyph_Shaded(font: *TTF_Font, ch: uint16, fg: SDL_Color, bg: SDL_Color): *SDL_Surface
```



### TTF_RenderText_Blended

```lua
global function TTF_RenderText_Blended(font: *TTF_Font, text: cstring, fg: SDL_Color): *SDL_Surface
```



### TTF_RenderUTF8_Blended

```lua
global function TTF_RenderUTF8_Blended(font: *TTF_Font, text: cstring, fg: SDL_Color): *SDL_Surface
```



### TTF_RenderUNICODE_Blended

```lua
global function TTF_RenderUNICODE_Blended(font: *TTF_Font, text: *uint16, fg: SDL_Color): *SDL_Surface
```



### TTF_RenderText_Blended_Wrapped

```lua
global function TTF_RenderText_Blended_Wrapped(font: *TTF_Font, text: cstring, fg: SDL_Color, wrapLength: uint32): *SDL_Surface
```



### TTF_RenderUTF8_Blended_Wrapped

```lua
global function TTF_RenderUTF8_Blended_Wrapped(font: *TTF_Font, text: cstring, fg: SDL_Color, wrapLength: uint32): *SDL_Surface
```



### TTF_RenderUNICODE_Blended_Wrapped

```lua
global function TTF_RenderUNICODE_Blended_Wrapped(font: *TTF_Font, text: *uint16, fg: SDL_Color, wrapLength: uint32): *SDL_Surface
```



### TTF_RenderGlyph_Blended

```lua
global function TTF_RenderGlyph_Blended(font: *TTF_Font, ch: uint16, fg: SDL_Color): *SDL_Surface
```



### TTF_CloseFont

```lua
global function TTF_CloseFont(font: *TTF_Font)
```



### TTF_Quit

```lua
global function TTF_Quit()
```



### TTF_WasInit

```lua
global function TTF_WasInit(): cint
```



### TTF_GetFontKerningSize

```lua
global function TTF_GetFontKerningSize(font: *TTF_Font, prev_index: cint, index: cint): cint
```



### TTF_GetFontKerningSizeGlyphs

```lua
global function TTF_GetFontKerningSizeGlyphs(font: *TTF_Font, previous_ch: uint16, ch: uint16): cint
```



### SDL_TTF_MAJOR_VERSION

```lua
global SDL_TTF_MAJOR_VERSION: cint
```



### SDL_TTF_MINOR_VERSION

```lua
global SDL_TTF_MINOR_VERSION: cint
```



### SDL_TTF_PATCHLEVEL

```lua
global SDL_TTF_PATCHLEVEL: cint
```



### SDL_TTF_COMPILEDVERSION

```lua
global SDL_TTF_COMPILEDVERSION: cint
```



### UNICODE_BOM_NATIVE

```lua
global UNICODE_BOM_NATIVE: cint
```



### UNICODE_BOM_SWAPPED

```lua
global UNICODE_BOM_SWAPPED: cint
```



### TTF_STYLE_NORMAL

```lua
global TTF_STYLE_NORMAL: cint
```



### TTF_STYLE_BOLD

```lua
global TTF_STYLE_BOLD: cint
```



### TTF_STYLE_ITALIC

```lua
global TTF_STYLE_ITALIC: cint
```



### TTF_STYLE_UNDERLINE

```lua
global TTF_STYLE_UNDERLINE: cint
```



### TTF_STYLE_STRIKETHROUGH

```lua
global TTF_STYLE_STRIKETHROUGH: cint
```



### TTF_HINTING_NORMAL

```lua
global TTF_HINTING_NORMAL: cint
```



### TTF_HINTING_LIGHT

```lua
global TTF_HINTING_LIGHT: cint
```



### TTF_HINTING_MONO

```lua
global TTF_HINTING_MONO: cint
```



### TTF_HINTING_NONE

```lua
global TTF_HINTING_NONE: cint
```



### SDL_TTF_VERSION_ATLEAST

```lua
global function SDL_TTF_VERSION_ATLEAST(x: cint, y: cint, z: cint): SDL_bool
```



### SDL_TTF_VERSION

```lua
global function SDL_TTF_VERSION(x: *SDL_version)
```



### TTF_SetError

```lua
global function TTF_SetError(fmt: cstring, ...: cvarargs): cint
```



### TTF_GetError

```lua
global function TTF_GetError(): cstring
```



---
