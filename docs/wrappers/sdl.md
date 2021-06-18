# nene/wrappers/sdl.nelua
## Nene.SDLWrapper

```lua
global Nene.SDLWrapper = @record{}
```

## warn_msg

```lua
local function warn_msg(fn_name, msg)
```

## Nene.SDLWrapper.sdl_init
Wrapper of `SDL_Init` 
 
Initialize SDL library, please also read the SDL_Init documentation on _Remarks_ section for details. 
 
Related SDL documentation: 
* [SDL_Init](https://wiki.libsdl.org/SDL_Init)
```lua
function Nene.SDLWrapper.sdl_init(flags: uint32): boolean
```

## Nene.SDLWrapper.sdl_quit
Wrapper of `SDL_Quit` 
 
Quit SDL, cleaning up all initialized subsystems. 
 
Related SDL documentation: 
* [SDL_Quit](https://wiki.libsdl.org/SDL_Quit)
```lua
function Nene.SDLWrapper.sdl_quit()
```

## Nene.SDLWrapper.create_texture_from_surface
Wrapper of `SDL_CreateTextureFromSurface` 
 
Creates a texture from the surface. 
 
Related SDL documentation: 
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer) 
* [SDL_Surface](https://wiki.libsdl.org/SDL_Surface) 
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture) 
* [SDL_CreateTextureFromSurface](https://wiki.libsdl.org/SDL_CreateTextureFromSurface)
```lua
function Nene.SDLWrapper.create_texture_from_surface(renderer: *SDL_Renderer, surface: *SDL_Surface): (*SDL_Texture, boolean)
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
function Nene.SDLWrapper.set_texture_color_modulation(texture: *SDL_Texture, color: SDL_Color): boolean
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

## Nene.SDLWrapper.get_keyboard_state
Wrapper of `SDL_GetKeyboardState`. 
 
Return the state of keyboard as an array of bytes, each element of this array represents a key, which 
`0` value means "not pressed" and `1` means "pressed". 
 
The values are accessed using `SDL_Scancode` enumeration. 
 
Related SDL documentation: 
* [SDL_GetKeyboardState](https://wiki.libsdl.org/SDL_GetKeyboardState) 
* [SDL_Scancode](https://wiki.libsdl.org/SDL_Scancode)
```lua
function Nene.SDLWrapper.get_keyboard_state(): span(uint8)
```

## Nene.SDLWrapper.get_mouse_state
Wrapper of `SDL_GetMouseState`. 
 
Returns a bitmask which each bit represents a mouse button and the mouse's position (relative to window) 
 
Related SDL documentation: 
* [SDL_GetMouseState](https://wiki.libsdl.org/SDL_GetMouseState)
```lua
function Nene.SDLWrapper.get_mouse_state(): (uint32, cint, cint)
```

## Nene.SDLWrapper.poll_event
Wrapper of `SDL_PollEvent` 
 
Poll for currently pending events, it returns `true` when there is a pending event and will 
store the polled event on on the dereferenced `event` argument, removing it from the queue. 
 
if `event` is `nilptr`, then it only return if there is a pending event, but it will not dequeue it. 
 
Related SDL documentation: 
* [SDL_PollEvent](https://wiki.libsdl.org/SDL_PollEvent)
```lua
function Nene.SDLWrapper.poll_event(event: *SDL_Event): boolean
```

## Nene.SDLWrapper.create_window
Wrapper of `SDL_CreateWindow` 
 
Create a window at the `x` and `y` position, with `w` and `h` dimensions and with the given `flags`. 
 
Related SDL documentation: 
* [SDL_Window](https://wiki.libsdl.org/SDL_Window) 
* [SDL_CreateWindow](https://wiki.libsdl.org/SDL_CreateWindow)
```lua
function Nene.SDLWrapper.create_window(title: cstring, x: cint, y: cint, w: cint, h: cint, flags: uint32): (*SDL_Window, boolean)
```

## Nene.SDLWrapper.destroy_window
Wrapper of `SDL_DestroyWindow` 
 
Destroys window. 
 
Related SDL documentation: 
* [SDL_Window](https://wiki.libsdl.org/SDL_Window) 
* [SDL_DestroyWindow](https://wiki.libsdl.org/SDL_DestroyWindow)
```lua
function Nene.SDLWrapper.destroy_window(window: *SDL_Window)
```

## Nene.SDLWrapper.get_window_size
Wrapper of `SDL_GetWindowSize` 
 
Get the size of the current window 
 
Related SDL documentation: 
* [SDL_GetWindowSize](https://wiki.libsdl.org/SDL_GetWindowSize)
```lua
function Nene.SDLWrapper.get_window_size(window: *SDL_Window): (cint, cint)
```

## Nene.SDLWrapper.create_renderer
Wrapper of `SDL_CreateRenderer` 
 
Create 2D rendering context for a window. 
 
Related SDL documentation: 
* [SDL_Window](https://wiki.libsdl.org/SDL_Window) 
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer) 
* [SDL_CreateRenderer](https://wiki.libsdl.org/SDL_CreateRenderer)
```lua
function Nene.SDLWrapper.create_renderer(window: *SDL_Window, index: cint, flags: uint32): (*SDL_Renderer, boolean)
```

## Nene.SDLWrapper.destroy_renderer
Wrapper of `SDL_DestroyRenderer` 
 
Destroys 2D rendering context of a window, also destroys associated textures. 
 
Related SDL documentation: 
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture) 
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer) 
* [SDL_DestroyRenderer](https://wiki.libsdl.org/SDL_DestroyRenderer)
```lua
function Nene.SDLWrapper.destroy_renderer(renderer: *SDL_Renderer)
```

## Nene.SDLWrapper.set_render_draw_color
Wrapper of `SDL_SetRenderDrawColor` 
 
Change the rendering draw color for drawing operations. 
 
Related SDL documentation: 
* [SDL_Color](https://wiki.libsdl.org/SDL_Color) 
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer) 
* [SDL_SetRenderDrawColor](https://wiki.libsdl.org/SDL_SetRenderDrawColor)
```lua
function Nene.SDLWrapper.set_render_draw_color(renderer: *SDL_Renderer, r: uint8, g: uint8, b: uint8, a: uint8): boolean
```

## Nene.SDLWrapper.set_render_draw_blend_mode
Wrapper of `SDL_SetRenderDrawBlendMode` 
 
Change the blend mode use for drawing operations 
 
Related SDL documentation: 
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer) 
* [SDL_BlendMode](https://wiki.libsdl.org/SDL_BlendMode) 
* [SDL_SetRenderDrawBlendMode](https://wiki.libsdl.org/SDL_SetRenderDrawBlendMode)
```lua
function Nene.SDLWrapper.set_render_draw_blend_mode(renderer: *SDL_Renderer, blend_mode: SDL_BlendMode): boolean
```

## Nene.SDLWrapper.render_clear
Wrapper of `SDL_RenderClear` 
 
Clears the rendering target with the given `color`. 
 
Related SDL documentation: 
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer) 
* [SDL_RenderClear](https://wiki.libsdl.org/SDL_RenderClear)
```lua
function Nene.SDLWrapper.render_clear(renderer: *SDL_Renderer): boolean
```

## Nene.SDLWrapper.render_present
Wrapper of `SDL_RenderPresent` 
 
Presents the rendered contents on backbuffer 
(read the SDL_RenderPresent documentation on the _Remarks_ section for more details). 
 
Related SDL documentation: 
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer) 
* [SDL_RenderPresent](https://wiki.libsdl.org/SDL_RenderPresent)
```lua
function Nene.SDLWrapper.render_present(renderer: *SDL_Renderer)
```

## Nene.SDLWrapper.render_draw_line
Wrapper of `SDL_RenderDrawLine` 
 
Draw a line on the current rendering target. 
 
Related SDL documentation: 
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer) 
* [SDL_RenderDrawLine](https://wiki.libsdl.org/SDL_RenderDrawLine)
```lua
function Nene.SDLWrapper.render_draw_line(renderer: *SDL_Renderer, x1: cint, y1: cint, x2: cint, y2: cint): boolean
```

## Nene.SDLWrapper.render_draw_rect
Wrapper of `SDL_RenderDrawRect` 
 
Draw the lines of rectangle on the current rendering target. 
 
Related SDL documentation: 
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer) 
* [SDL_RenderDrawRect](https://wiki.libsdl.org/SDL_RenderDrawRect)
```lua
function Nene.SDLWrapper.render_draw_rect(renderer: *SDL_Renderer, rect: *SDL_Rect): boolean
```

## Nene.SDLWrapper.render_fill_rect
Wrapper of `SDL_RenderFillRect` 
 
Draw a filled rectangle on the current rendering target. 
 
Related SDL documentation: 
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer) 
* [SDL_RenderFillRect](https://wiki.libsdl.org/SDL_RenderFillRect)
```lua
function Nene.SDLWrapper.render_fill_rect(renderer: *SDL_Renderer, rect: *SDL_Rect): boolean
```

## Nene.SDLWrapper.render_copy
Wrapper of `SDL_RenderCopy` 
 
Copy a portion of the texture to the current rendering target. 
You can pass `nilptr` to both `srcrect` and `dstrect` variables. 
 
Related SDL documentation: 
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer) 
* [SDL_Rect](https://wiki.libsdl.org/SDL_Rect) 
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture) 
* [SDL_RenderCopy](https://wiki.libsdl.org/SDL_RenderCopy)
```lua
function Nene.SDLWrapper.render_copy(renderer: *SDL_Renderer, texture: *SDL_Texture, srcrect: *SDL_Rect, dstrect: *SDL_Rect): boolean
```
