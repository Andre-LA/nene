### IMG_Linked_Version

```lua
global function IMG_Linked_Version(): *SDL_version
```



### IMG_InitFlags

```lua
global IMG_InitFlags: type = @enum(cint){
  IMG_INIT_JPG = 1,
  IMG_INIT_PNG = 2,
  IMG_INIT_TIF = 4,
  IMG_INIT_WEBP = 8
}
```



### IMG_Init

```lua
global function IMG_Init(flags: cint): cint
```



### IMG_Quit

```lua
global function IMG_Quit()
```



### IMG_LoadTyped_RW

```lua
global function IMG_LoadTyped_RW(src: *SDL_RWops, freesrc: cint, type: cstring): *SDL_Surface
```



### IMG_Load

```lua
global function IMG_Load(file: cstring): *SDL_Surface
```



### IMG_Load_RW

```lua
global function IMG_Load_RW(src: *SDL_RWops, freesrc: cint): *SDL_Surface
```



### IMG_LoadTexture

```lua
global function IMG_LoadTexture(renderer: *SDL_Renderer, file: cstring): *SDL_Texture
```



### IMG_LoadTexture_RW

```lua
global function IMG_LoadTexture_RW(renderer: *SDL_Renderer, src: *SDL_RWops, freesrc: cint): *SDL_Texture
```



### IMG_LoadTextureTyped_RW

```lua
global function IMG_LoadTextureTyped_RW(renderer: *SDL_Renderer, src: *SDL_RWops, freesrc: cint, type: cstring): *SDL_Texture
```



### IMG_isICO

```lua
global function IMG_isICO(src: *SDL_RWops): cint
```



### IMG_isCUR

```lua
global function IMG_isCUR(src: *SDL_RWops): cint
```



### IMG_isBMP

```lua
global function IMG_isBMP(src: *SDL_RWops): cint
```



### IMG_isGIF

```lua
global function IMG_isGIF(src: *SDL_RWops): cint
```



### IMG_isJPG

```lua
global function IMG_isJPG(src: *SDL_RWops): cint
```



### IMG_isLBM

```lua
global function IMG_isLBM(src: *SDL_RWops): cint
```



### IMG_isPCX

```lua
global function IMG_isPCX(src: *SDL_RWops): cint
```



### IMG_isPNG

```lua
global function IMG_isPNG(src: *SDL_RWops): cint
```



### IMG_isPNM

```lua
global function IMG_isPNM(src: *SDL_RWops): cint
```



### IMG_isSVG

```lua
global function IMG_isSVG(src: *SDL_RWops): cint
```



### IMG_isTIF

```lua
global function IMG_isTIF(src: *SDL_RWops): cint
```



### IMG_isXCF

```lua
global function IMG_isXCF(src: *SDL_RWops): cint
```



### IMG_isXPM

```lua
global function IMG_isXPM(src: *SDL_RWops): cint
```



### IMG_isXV

```lua
global function IMG_isXV(src: *SDL_RWops): cint
```



### IMG_isWEBP

```lua
global function IMG_isWEBP(src: *SDL_RWops): cint
```



### IMG_LoadICO_RW

```lua
global function IMG_LoadICO_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadCUR_RW

```lua
global function IMG_LoadCUR_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadBMP_RW

```lua
global function IMG_LoadBMP_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadGIF_RW

```lua
global function IMG_LoadGIF_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadJPG_RW

```lua
global function IMG_LoadJPG_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadLBM_RW

```lua
global function IMG_LoadLBM_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadPCX_RW

```lua
global function IMG_LoadPCX_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadPNG_RW

```lua
global function IMG_LoadPNG_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadPNM_RW

```lua
global function IMG_LoadPNM_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadSVG_RW

```lua
global function IMG_LoadSVG_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadTGA_RW

```lua
global function IMG_LoadTGA_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadTIF_RW

```lua
global function IMG_LoadTIF_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadXCF_RW

```lua
global function IMG_LoadXCF_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadXPM_RW

```lua
global function IMG_LoadXPM_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadXV_RW

```lua
global function IMG_LoadXV_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadWEBP_RW

```lua
global function IMG_LoadWEBP_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_ReadXPMFromArray

```lua
global function IMG_ReadXPMFromArray(xpm: *cstring): *SDL_Surface
```



### IMG_SavePNG

```lua
global function IMG_SavePNG(surface: *SDL_Surface, file: cstring): cint
```



### IMG_SavePNG_RW

```lua
global function IMG_SavePNG_RW(surface: *SDL_Surface, dst: *SDL_RWops, freedst: cint): cint
```



### IMG_SaveJPG

```lua
global function IMG_SaveJPG(surface: *SDL_Surface, file: cstring, quality: cint): cint
```



### IMG_SaveJPG_RW

```lua
global function IMG_SaveJPG_RW(surface: *SDL_Surface, dst: *SDL_RWops, freedst: cint, quality: cint): cint
```



### SDL_IMAGE_MAJOR_VERSION

```lua
global SDL_IMAGE_MAJOR_VERSION: cint
```



### SDL_IMAGE_MINOR_VERSION

```lua
global SDL_IMAGE_MINOR_VERSION: cint
```



### SDL_IMAGE_PATCHLEVEL

```lua
global SDL_IMAGE_PATCHLEVEL: cint
```



### SDL_IMAGE_COMPILEDVERSION

```lua
global SDL_IMAGE_COMPILEDVERSION: cint
```



### SDL_IMAGE_VERSION_ATLEAST

```lua
global function SDL_IMAGE_VERSION_ATLEAST(x: cint, y: cint, z: cint): SDL_bool
```



### SDL_IMAGE_VERSION

```lua
global function SDL_IMAGE_VERSION(x: *SDL_version)
```



### IMG_SetError

```lua
global function IMG_SetError(fmt: cstring, ...: cvarargs): cint
```



### IMG_GetError

```lua
global function IMG_GetError(): cstring
```



---
