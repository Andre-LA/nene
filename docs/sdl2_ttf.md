### Summary
* [TTF_Linked_Version](#ttf_linked_version)
* [TTF_ByteSwappedUNICODE](#ttf_byteswappedunicode)
* [TTF_Font](#ttf_font)
* [TTF_Init](#ttf_init)
* [TTF_OpenFont](#ttf_openfont)
* [TTF_OpenFontIndex](#ttf_openfontindex)
* [TTF_OpenFontRW](#ttf_openfontrw)
* [TTF_OpenFontIndexRW](#ttf_openfontindexrw)
* [TTF_GetFontStyle](#ttf_getfontstyle)
* [TTF_SetFontStyle](#ttf_setfontstyle)
* [TTF_GetFontOutline](#ttf_getfontoutline)
* [TTF_SetFontOutline](#ttf_setfontoutline)
* [TTF_GetFontHinting](#ttf_getfonthinting)
* [TTF_SetFontHinting](#ttf_setfonthinting)
* [TTF_FontHeight](#ttf_fontheight)
* [TTF_FontAscent](#ttf_fontascent)
* [TTF_FontDescent](#ttf_fontdescent)
* [TTF_FontLineSkip](#ttf_fontlineskip)
* [TTF_GetFontKerning](#ttf_getfontkerning)
* [TTF_SetFontKerning](#ttf_setfontkerning)
* [TTF_FontFaces](#ttf_fontfaces)
* [TTF_FontFaceIsFixedWidth](#ttf_fontfaceisfixedwidth)
* [TTF_FontFaceFamilyName](#ttf_fontfacefamilyname)
* [TTF_FontFaceStyleName](#ttf_fontfacestylename)
* [TTF_GlyphIsProvided](#ttf_glyphisprovided)
* [TTF_GlyphMetrics](#ttf_glyphmetrics)
* [TTF_SizeText](#ttf_sizetext)
* [TTF_SizeUTF8](#ttf_sizeutf8)
* [TTF_SizeUNICODE](#ttf_sizeunicode)
* [TTF_RenderText_Solid](#ttf_rendertext_solid)
* [TTF_RenderUTF8_Solid](#ttf_renderutf8_solid)
* [TTF_RenderUNICODE_Solid](#ttf_renderunicode_solid)
* [TTF_RenderGlyph_Solid](#ttf_renderglyph_solid)
* [TTF_RenderText_Shaded](#ttf_rendertext_shaded)
* [TTF_RenderUTF8_Shaded](#ttf_renderutf8_shaded)
* [TTF_RenderUNICODE_Shaded](#ttf_renderunicode_shaded)
* [TTF_RenderGlyph_Shaded](#ttf_renderglyph_shaded)
* [TTF_RenderText_Blended](#ttf_rendertext_blended)
* [TTF_RenderUTF8_Blended](#ttf_renderutf8_blended)
* [TTF_RenderUNICODE_Blended](#ttf_renderunicode_blended)
* [TTF_RenderText_Blended_Wrapped](#ttf_rendertext_blended_wrapped)
* [TTF_RenderUTF8_Blended_Wrapped](#ttf_renderutf8_blended_wrapped)
* [TTF_RenderUNICODE_Blended_Wrapped](#ttf_renderunicode_blended_wrapped)
* [TTF_RenderGlyph_Blended](#ttf_renderglyph_blended)
* [TTF_CloseFont](#ttf_closefont)
* [TTF_Quit](#ttf_quit)
* [TTF_WasInit](#ttf_wasinit)
* [TTF_GetFontKerningSize](#ttf_getfontkerningsize)
* [TTF_GetFontKerningSizeGlyphs](#ttf_getfontkerningsizeglyphs)
* [SDL_TTF_MAJOR_VERSION](#sdl_ttf_major_version)
* [SDL_TTF_MINOR_VERSION](#sdl_ttf_minor_version)
* [SDL_TTF_PATCHLEVEL](#sdl_ttf_patchlevel)
* [SDL_TTF_COMPILEDVERSION](#sdl_ttf_compiledversion)
* [UNICODE_BOM_NATIVE](#unicode_bom_native)
* [UNICODE_BOM_SWAPPED](#unicode_bom_swapped)
* [TTF_STYLE_NORMAL](#ttf_style_normal)
* [TTF_STYLE_BOLD](#ttf_style_bold)
* [TTF_STYLE_ITALIC](#ttf_style_italic)
* [TTF_STYLE_UNDERLINE](#ttf_style_underline)
* [TTF_STYLE_STRIKETHROUGH](#ttf_style_strikethrough)
* [TTF_HINTING_NORMAL](#ttf_hinting_normal)
* [TTF_HINTING_LIGHT](#ttf_hinting_light)
* [TTF_HINTING_MONO](#ttf_hinting_mono)
* [TTF_HINTING_NONE](#ttf_hinting_none)
* [SDL_TTF_VERSION_ATLEAST](#sdl_ttf_version_atleast)
* [SDL_TTF_VERSION](#sdl_ttf_version)
* [TTF_SetError](#ttf_seterror)
* [TTF_GetError](#ttf_geterror)

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
