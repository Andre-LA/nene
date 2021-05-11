# nene/core_state.nelua
## Nene.Core
The core state of Nene, it contains pointers made by SDL2, and doesn't requires any other Nene modules (except 
`Nene.Math`, `Nene.Color` and `Nene.SDLWrapper`). 
Most of the `Core`'s functions comes from SDL2 actually.
```lua
global Nene.Core = @record{
  quit: boolean,           -- `true` when the application will quit, `false` otherwise;
  window: *SDL_Window,     -- reference to the window created on initialization; using more than 1 window is a non-goal for Nene;
  renderer: *SDL_Renderer, -- reference to the window's renderer, created on initialization
  keyboard_state: [(SDL_NUM_SCANCODES)]uint8,      -- holds the state of keyboard in the current frame
  prev_keyboard_state: [(SDL_NUM_SCANCODES)]uint8, -- holds the state of keyboard in the previous frame
}
```

## Nene.Core.EventsCallbacks
The callbacks that can be passed on `Core:pool_events` method 
 
Related SDL documentation: 
* [SDL_Event](https://wiki.libsdl.org/SDL_Event)
```lua
global Nene.Core.EventsCallbacks = @record{
  window_cb  : function(window  : SDL_WindowEvent),           -- window window event data
  key_cb     : function(key     : SDL_KeyboardEvent),         -- key keyboard event data
  edit_cb    : function(edit    : SDL_TextEditingEvent),      -- edit text editing event data
  text_cb    : function(text    : SDL_TextInputEvent),        -- text text input event data
  motion_cb  : function(motion  : SDL_MouseMotionEvent),      -- motion mouse motion event data
  button_cb  : function(button  : SDL_MouseButtonEvent),      -- button mouse button event data
  wheel_cb   : function(wheel   : SDL_MouseWheelEvent),       -- wheel mouse wheel event data
  jaxis_cb   : function(jaxis   : SDL_JoyAxisEvent),          -- jaxis joystick axis event data
  jball_cb   : function(jball   : SDL_JoyBallEvent),          -- jball joystick ball event data
  jhat_cb    : function(jhat    : SDL_JoyHatEvent),           -- jhat joystick hat event data
  jbutton_cb : function(jbutton : SDL_JoyButtonEvent),        -- jbutton joystick button event data
  jdevice_cb : function(jdevice : SDL_JoyDeviceEvent),        -- jdevice joystick device event data
  caxis_cb   : function(caxis   : SDL_ControllerAxisEvent),   -- caxis game controller axis event data
  cbutton_cb : function(cbutton : SDL_ControllerButtonEvent), -- cbutton game controller button event data
  cdevice_cb : function(cdevice : SDL_ControllerDeviceEvent), -- cdevice game controller device event data
  adevice_cb : function(adevice : SDL_AudioDeviceEvent),      -- adevice audio device event data (>= SDL 2.0.4)
  quit_cb    : function(quit    : SDL_QuitEvent),             -- quit quit request event data
  user_cb    : function(user    : SDL_UserEvent),             -- user custom event data
  syswm_cb   : function(syswm   : SDL_SysWMEvent),            -- syswm system dependent window event data
  tfinger_cb : function(tfinger : SDL_TouchFingerEvent),      -- tfinger touch finger event data
  mgesture_cb: function(mgesture: SDL_MultiGestureEvent),     -- mgesture multi finger gesture data
  dgesture_cb: function(dgesture: SDL_DollarGestureEvent),    -- dgesture multi finger gesture data
  drop_cb    : function(drop    : SDL_DropEvent)              -- drag and drop event data
}
```

## Nene.Core:pool_events
You should call this method at the start of each game loop tick, it: 
1. Pools all SDL events; 
2. Updates the `self.quit` boolean value, it becomes `true` when the appplication will quit (see SDL_QuitEvent); 
3. Calls the respective callbacks if `evt_callbacks` is given. 
 
Related SDL documentation: 
* [SDL_PollEvent](https://wiki.libsdl.org/SDL_PollEvent) 
* [SDL_Event](https://wiki.libsdl.org/SDL_Event) 
* [SDL_QuitEvent](https://wiki.libsdl.org/SDL_QuitEvent)
```lua
function Nene.Core:pool_events(evt_callbacks: facultative(Nene.Core.EventsCallbacks))
```

## Nene.Core:get_window_size
Get the size of the current window. 
 
Related SDL documentation: 
* [SDL_GetWindowSize](https://wiki.libsdl.org/SDL_GetWindowSize)
```lua
function Nene.Core:get_window_size(): (cint, cint)
```

## Nene.Core:ms_since_init
get the current time in milliseconds since SDL initialization (done at the `Core.init` method) 
 
Related SDL documentation: 
* [SDL_GetTicks](https://wiki.libsdl.org/SDL_GetTicks)
```lua
function Nene.Core:ms_since_init()
```

## Nene.Core:get_scancode
when only the `scancode` argument is given, it returns the state of that `scancode` (that is, if is currently pressed); 
 
when `is_down` argument is also given: 
    * if `is_down` is `true`, then it returns if this scancode was just pressed on the current frame (that is, it wasn't pressed on the previous frame); 
    * if `is_down` is `false`, then it returns if this scancode was just released on the current frame (that is, it was pressed on the previous frame, but currently it isn't). 
 
Related SDL documentation: 
* [SDL_Scancode](https://wiki.libsdl.org/SDL_Scancode) 
* [SDL_GetKeyboardState](https://wiki.libsdl.org/SDL_GetKeyboardState)
```lua
function Nene.Core:get_scancode(scancode: SDL_Scancode, is_down: facultative(boolean)): boolean
```

## Nene.Core:get_mouse_state
returns the mouse coordinates relative to window and a bitmask state of mouse buttons. 
 
Related SDL documentation: 
* [SDL_GetMouseState](https://wiki.libsdl.org/SDL_GetMouseState)
```lua
function Nene.Core:get_mouse_state(): (Nene.Math.Vec2, uint32)
```

## Nene.Core:set_render_draw_color
Set rendering draw color 
 
Related SDL documentation: 
* [SDL_SetRenderDrawColor](https://wiki.libsdl.org/SDL_SetRenderDrawColor)
```lua
function Nene.Core:set_render_draw_color(color: Nene.Color)
```

## Nene.Core:render_clear
it clears the rendering target with the given `color`. 
 
Related SDL documentation: 
* [SDL_RenderClear](https://wiki.libsdl.org/SDL_RenderClear)
```lua
function Nene.Core:render_clear(color: Nene.Color)
```

## Nene.Core:render_draw_line
renders a line from `origin` to `destination` with the given `color`. 
 
Related SDL documentation: 
* [SDL_RenderDrawLine](https://wiki.libsdl.org/SDL_RenderDrawLine)
```lua
function Nene.Core:render_draw_line(origin: Nene.Math.Vec2, destination: Nene.Math.Vec2, color: Nene.Color)
```

## Nene.Core:render_draw_rect
renders the given `rectangle` with the given `color`; it will be filled if `use_lines` is `false`. 
 
Related SDL documentation: 
* [SDL_Rect](https://wiki.libsdl.org/SDL_Rect) 
* [SDL_RenderDrawRect](https://wiki.libsdl.org/SDL_RenderDrawRect) 
* [SDL_RenderFillRect](https://wiki.libsdl.org/SDL_RenderFillRect)
```lua
function Nene.Core:render_draw_rect(rectangle: Nene.Math.Rect, use_lines: boolean, color: Nene.Color)
```

## Nene.Core:render_copy
Wrapper of `SDL_RenderCopy`. 
Copies a Texture on the rendering target. 
 
By default the whole texture is copied unless the `source` rectangle is given, 
in this case only the "source" part of the texture will be copied. 
 
By default the texture will be copied on the whole rendering target unless the `destination` rectangle is given, 
in this case it will be copied at this "destination" part of the rendering target. 
 
Related SDL documentation: 
* [SDL_RenderCopy](https://wiki.libsdl.org/SDL_RenderCopy) 
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)
```lua
function Nene.Core:render_copy(tex: *SDL_Texture, source: facultative(Nene.Math.Rect), destination: facultative(Nene.Math.Rect))
```

## Nene.Core:create_texture_from_surface
Wrapper of `SDL_CreateTextureFromSurface`. 
 
Creates a Texture from the given surface. 
 
Related SDL_TTF documentation: 
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture) 
* [SDL_Surface](https://wiki.libsdl.org/SDL_Surface) 
* [SDL_CreateTextureFromSurface](https://wiki.libsdl.org/SDL_CreateTextureFromSurface)
```lua
function Nene.Core:create_texture_from_surface(surface_ref: *SDL_Surface): (*SDL_Texture, boolean)
```

## Nene.Core:render_present
presents the SDL's composed backbuffer (any rendering operation is done on the SDL's backbuffer, 
this function presents it). 
 
This also does some modification on the state, preparing it for the next frame. 
 
Related SDL documentation: 
* [SDL_RenderPresent](https://wiki.libsdl.org/SDL_RenderPresent)
```lua
function Nene.Core:render_present()
```

## Nene.Core.init
try to initialize and return a new initilized core state. 
 
returns: 
  * a boolean that indicates true on success 
  * a string error message on failure (or empty otherwise) 
  * a new state, only filled on success 
notes: 
  * You always should first check if the initialization 
  succeeded before trying to use the state 
 
Related SDL documentation: 
* [SDL_Init](https://wiki.libsdl.org/SDL_Init) 
* [SDL_CreateWindow](https://wiki.libsdl.org/SDL_CreateWindow) 
* [SDL_CreateRenderer](https://wiki.libsdl.org/SDL_CreateRenderer) 
* [SDL_SetRenderDrawBlendMode](https://wiki.libsdl.org/SDL_SetRenderDrawBlendMode) 
* [IMG_Init](https://www.libsdl.org/projects/SDL_image/docs/SDL_image_8.html) 
* [Mix_OpenAudio](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_11.html) 
* [TTF_Init](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_8.html)
```lua
function Nene.Core.init(
```

## Nene.Core:terminate
Finalize application and quits all SDL subsystems 
 
Related SDL documentation: 
* [SDL_DestroyRenderer](https://wiki.libsdl.org/SDL_DestroyRenderer) 
* [SDL_DestroyWindow](https://wiki.libsdl.org/SDL_DestroyWindow) 
* [TTF_Quit](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_10.html) 
* [Mix_Quit](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_10.html) 
* [Mix_CloseAudio](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_12.html) 
* [IMG_Quit](https://www.libsdl.org/projects/SDL_image/docs/SDL_image_9.html) 
* [SDL_Quit](https://wiki.libsdl.org/SDL_Quit)
```lua
function Nene.Core:terminate()
```
