# nene/img_wrapper.nelua
## Nene.ImgWrapper

```lua
global Nene.ImgWrapper = @record{}
```

## warn_msg

```lua
local function warn_msg(fn_name, msg)
```

## Nene.ImgWrapper.img_init
Wrapper of `IMG_Init` 
 
Initialize SDL_image loading support. 
This function doesn't check if `Nene` is initialized. 
 
It returns an `ok` (boolean) success status and the bitmask that `IMG_Init` returns. 
The `ok` status is true when the bitmask returned by `IMG_Init` is equals to `flags` argument. 
 
Related SDL_ttf documentation: 
* [IMG_Init](https://www.libsdl.org/projects/SDL_image/docs/SDL_image_8.html)
```lua
function Nene.ImgWrapper.img_init(flags: cint): (boolean, cint)
```

## Nene.ImgWrapper.img_quit

```lua
function Nene.ImgWrapper.img_quit()
```