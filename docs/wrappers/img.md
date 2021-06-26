### ImgWrapper

```nelua
global ImgWrapper = @record{}
```



### ImgWrapper.img_init

```nelua
function ImgWrapper.img_init(flags: cint): (boolean, cint)
```

Wrapper of `IMG_Init`

Initialize SDL_image loading support.

It returns an `ok` (boolean) success status and the bitmask that `IMG_Init` returns.
The `ok` status is true when the bitmask returned by `IMG_Init` is equals to `flags` argument.

Related SDL_ttf documentation:
* [IMG_Init](https://www.libsdl.org/projects/SDL_image/docs/SDL_image_8.html)

### ImgWrapper.img_quit

```nelua
function ImgWrapper.img_quit()
```

Wrapper of `IMG_Quit`

Shutdown and cleanup SDL_image loading support.

Related SDL documentation:
* [IMG_Quit](https://www.libsdl.org/projects/SDL_image/docs/SDL_image_9.html)

---
