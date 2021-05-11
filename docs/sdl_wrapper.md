# nene/sdl_wrapper.nelua
## Nene.SDLWrapper

```lua
global Nene.SDLWrapper = @record{}
```

## Nene.SDLWrapper.destroy_texture
Wrapper of `SDL_DestroyTexture` 
 
Destroys the given `texture` 
 
Related SDL documentation: 
* [SDL_DestroyTexture](https://wiki.libsdl.org/SDL_DestroyTexture)
```lua
function Nene.SDLWrapper.destroy_texture(texture: *SDL_Texture)
```

## Nene.SDLWrapper.set_texture_color_modulation
Wrapper of `SDL_SetTextureColorMod`. 
 
Set the color modulation of the given `texture` with the given `color`. 
 
Related SDL documentation: 
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture) 
* [SDL_SetTextureColorMod](https://wiki.libsdl.org/SDL_SetTextureColorMod)
```lua
function Nene.SDLWrapper.set_texture_color_modulation(texture: *SDL_Texture, color: Nene.Color): boolean
```

## Nene.SDLWrapper.query_texture_size
Wrapper of `SDL_QueryTexture`. 
 
Queries the size of the given `texture` and returns it size in pixels in the first and second return values. 
a third value is also returned, which is `true` if the operation was successful, `false` otherwise. 
 
Related SDL documentation: 
* [SDL_QueryTexture](https://wiki.libsdl.org/SDL_QueryTexture)
```lua
function Nene.SDLWrapper.query_texture_size(texture: *SDL_Texture): (cint, cint, boolean)
```

## Nene.SDLWrapper.get_window_size
Wrapper of `SDL_GetWindowSize` 
 
Get the size of the current window 
 
Related SDL documentation: 
* [SDL_GetWindowSize](https://wiki.libsdl.org/SDL_GetWindowSize)
```lua
function Nene.SDLWrapper.get_window_size(window: *SDL_Window): (cint, cint, boolean)
```

## Nene.SDLWrapper.get_ticks
Wrapper of `SDL_GetTicks` 
 
Returns the number of milliseconds since SDL initialization. 
 
Related SDL documentation: 
* [SDL_GetTicks](https://wiki.libsdl.org/SDL_GetTicks)
```lua
function Nene.SDLWrapper.get_ticks(): uint32
```

## Nene.SDLWrapper.free_surface
Wrapper of `SDL_FreeSurface`. 
 
Related SDL documentation: 
* [SDL_FreeSurface](https://wiki.libsdl.org/SDL_FreeSurface)
```lua
function Nene.SDLWrapper.free_surface(surface: *SDL_Surface)
```
