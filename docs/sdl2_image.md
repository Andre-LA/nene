# nene/sdl2_image.nelua
## IMG_Linked_Version

```lua
global function IMG_Linked_Version(): *SDL_version <cimport, nodecl> end
```

## IMG_Init

```lua
global function IMG_Init(flags: cint): cint <cimport, nodecl> end
```

## IMG_Quit

```lua
global function IMG_Quit() <cimport, nodecl> end
```

## IMG_LoadTyped_RW

```lua
global function IMG_LoadTyped_RW(src: *SDL_RWops, freesrc: cint, type: cstring): *SDL_Surface <cimport, nodecl> end
```

## IMG_Load

```lua
global function IMG_Load(file: cstring): *SDL_Surface <cimport, nodecl> end
```

## IMG_Load_RW

```lua
global function IMG_Load_RW(src: *SDL_RWops, freesrc: cint): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadTexture

```lua
global function IMG_LoadTexture(renderer: *SDL_Renderer, file: cstring): *SDL_Texture <cimport, nodecl> end
```

## IMG_LoadTexture_RW

```lua
global function IMG_LoadTexture_RW(renderer: *SDL_Renderer, src: *SDL_RWops, freesrc: cint): *SDL_Texture <cimport, nodecl> end
```

## IMG_LoadTextureTyped_RW

```lua
global function IMG_LoadTextureTyped_RW(renderer: *SDL_Renderer, src: *SDL_RWops, freesrc: cint, type: cstring): *SDL_Texture <cimport, nodecl> end
```

## IMG_isICO

```lua
global function IMG_isICO(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isCUR

```lua
global function IMG_isCUR(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isBMP

```lua
global function IMG_isBMP(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isGIF

```lua
global function IMG_isGIF(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isJPG

```lua
global function IMG_isJPG(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isLBM

```lua
global function IMG_isLBM(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isPCX

```lua
global function IMG_isPCX(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isPNG

```lua
global function IMG_isPNG(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isPNM

```lua
global function IMG_isPNM(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isSVG

```lua
global function IMG_isSVG(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isTIF

```lua
global function IMG_isTIF(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isXCF

```lua
global function IMG_isXCF(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isXPM

```lua
global function IMG_isXPM(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isXV

```lua
global function IMG_isXV(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_isWEBP

```lua
global function IMG_isWEBP(src: *SDL_RWops): cint <cimport, nodecl> end
```

## IMG_LoadICO_RW

```lua
global function IMG_LoadICO_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadCUR_RW

```lua
global function IMG_LoadCUR_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadBMP_RW

```lua
global function IMG_LoadBMP_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadGIF_RW

```lua
global function IMG_LoadGIF_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadJPG_RW

```lua
global function IMG_LoadJPG_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadLBM_RW

```lua
global function IMG_LoadLBM_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadPCX_RW

```lua
global function IMG_LoadPCX_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadPNG_RW

```lua
global function IMG_LoadPNG_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadPNM_RW

```lua
global function IMG_LoadPNM_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadSVG_RW

```lua
global function IMG_LoadSVG_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadTGA_RW

```lua
global function IMG_LoadTGA_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadTIF_RW

```lua
global function IMG_LoadTIF_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadXCF_RW

```lua
global function IMG_LoadXCF_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadXPM_RW

```lua
global function IMG_LoadXPM_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadXV_RW

```lua
global function IMG_LoadXV_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_LoadWEBP_RW

```lua
global function IMG_LoadWEBP_RW(src: *SDL_RWops): *SDL_Surface <cimport, nodecl> end
```

## IMG_ReadXPMFromArray

```lua
global function IMG_ReadXPMFromArray(xpm: *cstring): *SDL_Surface <cimport, nodecl> end
```

## IMG_SavePNG

```lua
global function IMG_SavePNG(surface: *SDL_Surface, file: cstring): cint <cimport, nodecl> end
```

## IMG_SavePNG_RW

```lua
global function IMG_SavePNG_RW(surface: *SDL_Surface, dst: *SDL_RWops, freedst: cint): cint <cimport, nodecl> end
```

## IMG_SaveJPG

```lua
global function IMG_SaveJPG(surface: *SDL_Surface, file: cstring, quality: cint): cint <cimport, nodecl> end
```

## IMG_SaveJPG_RW

```lua
global function IMG_SaveJPG_RW(surface: *SDL_Surface, dst: *SDL_RWops, freedst: cint, quality: cint): cint <cimport, nodecl> end
```

## SDL_IMAGE_VERSION_ATLEAST

```lua
global function SDL_IMAGE_VERSION_ATLEAST(x: cint, y: cint, z: cint): SDL_bool <cimport, nodecl> end
```

## SDL_IMAGE_VERSION

```lua
global function SDL_IMAGE_VERSION(x: *SDL_version) <cimport, nodecl> end
```

## IMG_SetError

```lua
global function IMG_SetError(fmt: cstring, ...: cvarargs): cint <cimport, nodecl> end
```

## IMG_GetError

```lua
global function IMG_GetError(): cstring <cimport, nodecl> end
```
