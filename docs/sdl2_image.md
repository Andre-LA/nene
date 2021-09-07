### Summary
* [IMG_Linked_Version](#img_linked_version)
* [IMG_InitFlags](#img_initflags)
* [IMG_Init](#img_init)
* [IMG_Quit](#img_quit)
* [IMG_LoadTyped_RW](#img_loadtyped_rw)
* [IMG_Load](#img_load)
* [IMG_Load_RW](#img_load_rw)
* [IMG_LoadTexture](#img_loadtexture)
* [IMG_LoadTexture_RW](#img_loadtexture_rw)
* [IMG_LoadTextureTyped_RW](#img_loadtexturetyped_rw)
* [IMG_isICO](#img_isico)
* [IMG_isCUR](#img_iscur)
* [IMG_isBMP](#img_isbmp)
* [IMG_isGIF](#img_isgif)
* [IMG_isJPG](#img_isjpg)
* [IMG_isLBM](#img_islbm)
* [IMG_isPCX](#img_ispcx)
* [IMG_isPNG](#img_ispng)
* [IMG_isPNM](#img_ispnm)
* [IMG_isSVG](#img_issvg)
* [IMG_isTIF](#img_istif)
* [IMG_isXCF](#img_isxcf)
* [IMG_isXPM](#img_isxpm)
* [IMG_isXV](#img_isxv)
* [IMG_isWEBP](#img_iswebp)
* [IMG_LoadICO_RW](#img_loadico_rw)
* [IMG_LoadCUR_RW](#img_loadcur_rw)
* [IMG_LoadBMP_RW](#img_loadbmp_rw)
* [IMG_LoadGIF_RW](#img_loadgif_rw)
* [IMG_LoadJPG_RW](#img_loadjpg_rw)
* [IMG_LoadLBM_RW](#img_loadlbm_rw)
* [IMG_LoadPCX_RW](#img_loadpcx_rw)
* [IMG_LoadPNG_RW](#img_loadpng_rw)
* [IMG_LoadPNM_RW](#img_loadpnm_rw)
* [IMG_LoadSVG_RW](#img_loadsvg_rw)
* [IMG_LoadTGA_RW](#img_loadtga_rw)
* [IMG_LoadTIF_RW](#img_loadtif_rw)
* [IMG_LoadXCF_RW](#img_loadxcf_rw)
* [IMG_LoadXPM_RW](#img_loadxpm_rw)
* [IMG_LoadXV_RW](#img_loadxv_rw)
* [IMG_LoadWEBP_RW](#img_loadwebp_rw)
* [IMG_ReadXPMFromArray](#img_readxpmfromarray)
* [IMG_SavePNG](#img_savepng)
* [IMG_SavePNG_RW](#img_savepng_rw)
* [IMG_SaveJPG](#img_savejpg)
* [IMG_SaveJPG_RW](#img_savejpg_rw)
* [SDL_IMAGE_MAJOR_VERSION](#sdl_image_major_version)
* [SDL_IMAGE_MINOR_VERSION](#sdl_image_minor_version)
* [SDL_IMAGE_PATCHLEVEL](#sdl_image_patchlevel)
* [SDL_IMAGE_COMPILEDVERSION](#sdl_image_compiledversion)
* [SDL_IMAGE_VERSION_ATLEAST](#sdl_image_version_atleast)
* [SDL_IMAGE_VERSION](#sdl_image_version)
* [IMG_SetError](#img_seterror)
* [IMG_GetError](#img_geterror)

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
