### ImgWrapper

```lua
global ImgWrapper = @record{}
```



### ImgWrapper.img_init

```lua
function ImgWrapper.img_init(flags: cint): (boolean, cint)
```

Wrapper of `IMG_Init`

Initialize SDL_image loading support.

It returns an `ok` (boolean) success status and the bitmask that `IMG_Init` returns.
The `ok` status is true when the bitmask returned by `IMG_Init` is equals to `flags` argument.

Related SDL_image documentation:
* [IMG_Init](https://www.libsdl.org/projects/SDL_image/docs/SDL_image_8.html)

### ImgWrapper.img_load

```lua
function ImgWrapper.img_load(filepath: cstring): (*SDL_Surface, boolean)
```

Wrapper of `IMG_Load`

Loads a image from `filepath` and will return a surface (pointer) and a ok status.

It will return `nilptr` if the image could not be loaded, this also throws
an warning message, you can test if the operation was successful using the
second return value.

Related SDL_image documentation:
* [IMG_Load](https://www.libsdl.org/projects/SDL_image/docs/SDL_image_11.html#SEC11)

### ImgWrapper.img_quit

```lua
function ImgWrapper.img_quit()
```

Wrapper of `IMG_Quit`

Shutdown and cleanup SDL_image loading support.

Related SDL_image documentation:
* [IMG_Quit](https://www.libsdl.org/projects/SDL_image/docs/SDL_image_9.html)

---
