### Nene

```nelua
global Nene = @record{
  quit: boolean,           -- `true` when the application will quit, `false` otherwise;
  window: *SDL_Window,     -- reference to the window created on initialization; using more than 1 window is a non-goal for Nene;
  renderer: *SDL_Renderer, -- reference to the window's renderer, created on initialization
  keyboard_state: [(SDL_NUM_SCANCODES)]boolean,      -- holds the state of keyboard in the current frame (`true` means "pressed")
  prev_keyboard_state: [(SDL_NUM_SCANCODES)]boolean, -- holds the state of keyboard in the previous frame (`true` means "pressed")
}
```

The core of Nene, it contains pointers made by SDL2, and doesn't requires any other Nene modules (except
`Math`, `Color` and `SDLWrapper`).

Most of the `Core`'s functions comes from SDL2 actually.

### Nene.initialized

```nelua
global Nene.initialized
```

The initialization state of Nene, it's handled by `Nene.init` and `Nene.terminate` functions and shouldn't be modified
by the user.

### Nene.EventsCallbacks

```nelua
global Nene.EventsCallbacks = @record{
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

The callbacks that can be passed on `Core:pool_events` method

Related SDL documentation:
* [SDL_Event](https://wiki.libsdl.org/SDL_Event)

### Nene:pool_events

```nelua
function Nene:pool_events(evt_callbacks: facultative(Nene.EventsCallbacks))
```

You should call this method at the start of each game loop tick, it:
1. Pools all SDL events;
2. Updates the `self.quit` boolean value, it becomes `true` when the appplication will quit (see SDL_QuitEvent);
3. Calls the respective callbacks if `evt_callbacks` is given.

Related SDL documentation:
* [SDL_PollEvent](https://wiki.libsdl.org/SDL_PollEvent)
* [SDL_Event](https://wiki.libsdl.org/SDL_Event)
* [SDL_QuitEvent](https://wiki.libsdl.org/SDL_QuitEvent)
* [SDL_GetKeyboardState](https://wiki.libsdl.org/SDL_GetKeyboardState)
* [SDL_Scancode](https://wiki.libsdl.org/SDL_Scancode)

### Nene:get_window_size

```nelua
function Nene:get_window_size(): (cint, cint)
```

Get the size of the current window.

Related SDL documentation:
* [SDL_GetWindowSize](https://wiki.libsdl.org/SDL_GetWindowSize)

### Nene:get_scancode

```nelua
function Nene:get_scancode(scancode: SDL_Scancode, is_down: facultative(boolean)): boolean
```

Returns the state of `scancode`.

* if `is_down` is `true`, then it returns if this scancode was just pressed on the current frame (that is, it wasn't pressed on the previous frame);
* if `is_down` is `false`, then it returns if this scancode was just released on the current frame (that is, it was pressed on the previous frame, but currently it isn't).
* if `is_down` is `nil`, then it returns if is simply currently pressed.

Related SDL documentation:
* [SDL_Scancode](https://wiki.libsdl.org/SDL_Scancode)
* [SDL_GetKeyboardState](https://wiki.libsdl.org/SDL_GetKeyboardState)

### Nene:set_render_draw_color

```nelua
function Nene:set_render_draw_color(color: Color)
```

Set rendering draw color

Related Nene documentation:
* [Color](colors.md)

Related SDL documentation:
* [SDL_Color](https://wiki.libsdl.org/SDL_Color)
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer)
* [SDL_SetRenderDrawColor](https://wiki.libsdl.org/SDL_SetRenderDrawColor)

### Nene:render_clear

```nelua
function Nene:render_clear(color: Color)
```

it clears the rendering target with the given `color`.

Related Nene documentation:
* [Color](colors.md)
* [Nene.set_render_draw_color](core_state.md)

Related SDL documentation:
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer)
* [SDL_RenderClear](https://wiki.libsdl.org/SDL_RenderClear)

### Nene:render_draw_line

```nelua
function Nene:render_draw_line(origin: Math.Vec2, destination: Math.Vec2, color: Color)
```

renders a line from `origin` to `destination` with the given `color`.

Related Nene documentation:
* [Math.Vec2](math.md#nenemathvec2)
* [Color](colors.md)

Related SDL documentation:
* [SDL_RenderDrawLine](https://wiki.libsdl.org/SDL_RenderDrawLine)

### Nene:render_draw_rect

```nelua
function Nene:render_draw_rect(rectangle: Math.Rect, use_lines: boolean, color: Color)
```

renders the given `rectangle` with the given `color`; it will be filled if `use_lines` is `false`.

Related SDL documentation:
* [SDL_Rect](https://wiki.libsdl.org/SDL_Rect)
* [SDL_RenderDrawRect](https://wiki.libsdl.org/SDL_RenderDrawRect)
* [SDL_RenderFillRect](https://wiki.libsdl.org/SDL_RenderFillRect)

### Nene:render_copy

```nelua
function Nene:render_copy(tex: *SDL_Texture, source: facultative(Math.Rect), destination: facultative(Math.Rect))
```

Wrapper of `SDL_RenderCopy`.
Copies a Texture on the rendering target.

By default the whole texture is copied unless the `source` rectangle is given,
in this case only the "source" part of the texture will be copied.

By default the texture will be copied on the whole rendering target unless the `destination` rectangle is given,
in this case it will be copied at this "destination" part of the rendering target.

Related SDL documentation:
* [SDL_RenderCopy](https://wiki.libsdl.org/SDL_RenderCopy)
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)

### Nene:create_texture_from_surface

```nelua
function Nene:create_texture_from_surface(surface_ref: *SDL_Surface): (*SDL_Texture, boolean)
```

Wrapper of `SDL_CreateTextureFromSurface`.

Creates a Texture from the given surface.

Related SDL_TTF documentation:
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)
* [SDL_Surface](https://wiki.libsdl.org/SDL_Surface)
* [SDL_CreateTextureFromSurface](https://wiki.libsdl.org/SDL_CreateTextureFromSurface)

### Nene:render_present

```nelua
function Nene:render_present()
```

presents the SDL's composed backbuffer (any rendering operation is done on the SDL's backbuffer,
this function presents it).

This also does some modification on the state, preparing it for the next frame.

Related SDL documentation:
* [SDL_RenderPresent](https://wiki.libsdl.org/SDL_RenderPresent)

### Nene.init

```nelua
function Nene.init(
  title: string,
  window_size_x: integer, window_size_y: integer,
  pos_x: facultative(integer), pos_y: facultative(integer),
  flags: facultative(uint32)
): (boolean, Nene)
```

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

### Nene:terminate

```nelua
function Nene:terminate()
```

Finalize application and quits all SDL subsystems

Related SDL documentation:
* [SDL_DestroyRenderer](https://wiki.libsdl.org/SDL_DestroyRenderer)
* [SDL_DestroyWindow](https://wiki.libsdl.org/SDL_DestroyWindow)
* [TTF_Quit](https://libsdl.org/projects/SDL_ttf/docs/SDL_ttf_10.html)
* [Mix_Quit](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_10.html)
* [Mix_CloseAudio](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_12.html)
* [IMG_Quit](https://www.libsdl.org/projects/SDL_image/docs/SDL_image_9.html)
* [SDL_Quit](https://wiki.libsdl.org/SDL_Quit)

---
