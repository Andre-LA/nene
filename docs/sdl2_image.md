### IMG_Linked_Version

```nelua
global function IMG_Linked_Version(): *SDL_version
```



### IMG_InitFlags

```nelua
global IMG_InitFlags: type = @enum(cint){
  IMG_INIT_JPG = 1,
  IMG_INIT_PNG = 2,
  IMG_INIT_TIF = 4,
  IMG_INIT_WEBP = 8
}
```



### IMG_Init

```nelua
global function IMG_Init(flags: cint): cint
```



### IMG_Quit

```nelua
global function IMG_Quit()
```



### IMG_LoadTyped_RW

```nelua
global function IMG_LoadTyped_RW(src: *SDL_RWops, freesrc: cint, type: cstring): *SDL_Surface
```



### IMG_Load

```nelua
global function IMG_Load(file: cstring): *SDL_Surface
```



### IMG_Load_RW

```nelua
global function IMG_Load_RW(src: *SDL_RWops, freesrc: cint): *SDL_Surface
```



### IMG_LoadTexture

```nelua
global function IMG_LoadTexture(renderer: *SDL_Renderer, file: cstring): *SDL_Texture
```



### IMG_LoadTexture_RW

```nelua
global function IMG_LoadTexture_RW(renderer: *SDL_Renderer, src: *SDL_RWops, freesrc: cint): *SDL_Texture
```



### IMG_LoadTextureTyped_RW

```nelua
global function IMG_LoadTextureTyped_RW(renderer: *SDL_Renderer, src: *SDL_RWops, freesrc: cint, type: cstring): *SDL_Texture
```



### IMG_isICO

```nelua
global function IMG_isICO(src: *SDL_RWops): cint
```



### IMG_isCUR

```nelua
global function IMG_isCUR(src: *SDL_RWops): cint
```



### IMG_isBMP

```nelua
global function IMG_isBMP(src: *SDL_RWops): cint
```



### IMG_isGIF

```nelua
global function IMG_isGIF(src: *SDL_RWops): cint
```



### IMG_isJPG

```nelua
global function IMG_isJPG(src: *SDL_RWops): cint
```



### IMG_isLBM

```nelua
global function IMG_isLBM(src: *SDL_RWops): cint
```



### IMG_isPCX

```nelua
global function IMG_isPCX(src: *SDL_RWops): cint
```



### IMG_isPNG

```nelua
global function IMG_isPNG(src: *SDL_RWops): cint
```



### IMG_isPNM

```nelua
global function IMG_isPNM(src: *SDL_RWops): cint
```



### IMG_isSVG

```nelua
global function IMG_isSVG(src: *SDL_RWops): cint
```



### IMG_isTIF

```nelua
global function IMG_isTIF(src: *SDL_RWops): cint
```



### IMG_isXCF

```nelua
global function IMG_isXCF(src: *SDL_RWops): cint
```



### IMG_isXPM

```nelua
global function IMG_isXPM(src: *SDL_RWops): cint
```



### IMG_isXV

```nelua
global function IMG_isXV(src: *SDL_RWops): cint
```



### IMG_isWEBP

```nelua
global function IMG_isWEBP(src: *SDL_RWops): cint
```



### IMG_LoadICO_RW

```nelua
global function IMG_LoadICO_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadCUR_RW

```nelua
global function IMG_LoadCUR_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadBMP_RW

```nelua
global function IMG_LoadBMP_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadGIF_RW

```nelua
global function IMG_LoadGIF_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadJPG_RW

```nelua
global function IMG_LoadJPG_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadLBM_RW

```nelua
global function IMG_LoadLBM_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadPCX_RW

```nelua
global function IMG_LoadPCX_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadPNG_RW

```nelua
global function IMG_LoadPNG_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadPNM_RW

```nelua
global function IMG_LoadPNM_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadSVG_RW

```nelua
global function IMG_LoadSVG_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadTGA_RW

```nelua
global function IMG_LoadTGA_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadTIF_RW

```nelua
global function IMG_LoadTIF_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadXCF_RW

```nelua
global function IMG_LoadXCF_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadXPM_RW

```nelua
global function IMG_LoadXPM_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadXV_RW

```nelua
global function IMG_LoadXV_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_LoadWEBP_RW

```nelua
global function IMG_LoadWEBP_RW(src: *SDL_RWops): *SDL_Surface
```



### IMG_ReadXPMFromArray

```nelua
global function IMG_ReadXPMFromArray(xpm: *cstring): *SDL_Surface
```



### IMG_SavePNG

```nelua
global function IMG_SavePNG(surface: *SDL_Surface, file: cstring): cint
```



### IMG_SavePNG_RW

```nelua
global function IMG_SavePNG_RW(surface: *SDL_Surface, dst: *SDL_RWops, freedst: cint): cint
```



### IMG_SaveJPG

```nelua
global function IMG_SaveJPG(surface: *SDL_Surface, file: cstring, quality: cint): cint
```



### IMG_SaveJPG_RW

```nelua
global function IMG_SaveJPG_RW(surface: *SDL_Surface, dst: *SDL_RWops, freedst: cint, quality: cint): cint
```



### SDL_IMAGE_MAJOR_VERSION

```nelua
global SDL_IMAGE_MAJOR_VERSION: cint
```



### SDL_IMAGE_MINOR_VERSION

```nelua
global SDL_IMAGE_MINOR_VERSION: cint
```



### SDL_IMAGE_PATCHLEVEL

```nelua
global SDL_IMAGE_PATCHLEVEL: cint
```



### SDL_IMAGE_COMPILEDVERSION

```nelua
global SDL_IMAGE_COMPILEDVERSION: cint
```



### SDL_IMAGE_VERSION_ATLEAST

```nelua
global function SDL_IMAGE_VERSION_ATLEAST(x: cint, y: cint, z: cint): SDL_bool
```



### SDL_IMAGE_VERSION

```nelua
global function SDL_IMAGE_VERSION(x: *SDL_version)
```



### IMG_SetError

```nelua
global function IMG_SetError(fmt: cstring, ...: cvarargs): cint
```



### IMG_GetError

```nelua
global function IMG_GetError(): cstring
```



---
