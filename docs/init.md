### Summary
* [emscripten_set_main_loop](#emscripten_set_main_loop)
* [Nene](#nene)
* [Nene.initialized](#neneinitialized)
* [Nene.instance](#neneinstance)
* [Nene.EventsCallbacks](#neneeventscallbacks)
* [Nene:poll_events](#nenepoll_events)
* [Nene:get_window_size](#neneget_window_size)
* [Nene:get_scancode](#neneget_scancode)
* [Nene:get_mouse_button](#neneget_mouse_button)
* [Nene:set_render_draw_color](#neneset_render_draw_color)
* [Nene:set_render_draw_blend_mode](#neneset_render_draw_blend_mode)
* [Nene:set_raw_texture_color_mod](#neneset_raw_texture_color_mod)
* [Nene:set_render_clip](#neneset_render_clip)
* [Nene:render_clear](#nenerender_clear)
* [Nene:render_draw_line](#nenerender_draw_line)
* [Nene:render_draw_rect](#nenerender_draw_rect)
* [Nene:render_copy](#nenerender_copy)
* [Nene:set_render_target](#neneset_render_target)
* [Nene:create_raw_texture](#nenecreate_raw_texture)
* [Nene:create_raw_texture_from_surface](#nenecreate_raw_texture_from_surface)
* [Nene:render_present](#nenerender_present)
* [Nene.init](#neneinit)
* [Nene:terminate](#neneterminate)
* [Nene:__close](#nene__close)

### emscripten_set_main_loop

```lua
global function emscripten_set_main_loop(func: function(), fps: cint, simulate_infinite_loop: cint)
```



### Nene

```lua
local Nene = @record{
  -- general data
  quit: boolean,           -- `true` when the application will quit, `false` otherwise;
  current_time: uint32,    -- time since initialization (in milliseconds!).
  delta_time: number,      -- frame's delta time (in seconds!), that is, how much time passed between previous and current frame.
  render_offset: Vec2,     -- rendering offset, this is useful for some basic camera control

  -- SDL references
  window: *SDL_Window,     -- reference to the window created on initialization; using more than 1 window is a non-goal for Nene;
  renderer: *SDL_Renderer, -- reference to the window's renderer, created on initialization

  -- input states
  keyboard_state: [(SDL_NUM_SCANCODES)]boolean,      -- store the state of keyboard in the current frame (`true` means "pressed")
  prev_keyboard_state: [(SDL_NUM_SCANCODES)]boolean, -- store the state of keyboard in the previous frame (`true` means "pressed")
  mouse_pos: Vec2,                 -- store the mouse position relative to window
  mouse_buttons: [32]boolean,      -- store the mouse buttons state, each index per button (0 is left-button, 1 is middle-button, 2 is right-button)
  prev_mouse_buttons: [32]boolean, -- same as mouse_buttons, but from the previous frame
}
```

The core of Nene, it contains pointers made by SDL2, and doesn't requires any other Nene modules (except
`Math` and `Color`).

Many of the `Core`'s functions wraps SDL's functions actually.

### Nene.initialized

```lua
global Nene.initialized
```

The initialization state of Nene, it's set to `true` by `Nene.init` and
set to `false` by `Nene.terminate`, it shouldn't be modified by any other function.

### Nene.instance

```lua
function Nene.instance(): *Nene
```



### Nene.EventsCallbacks

```lua
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

The callbacks that can be passed on `Core:poll_events` method

Related SDL documentation:
* [SDL_Event](https://wiki.libsdl.org/SDL_Event)
* [SDL_WindowEvent](https://wiki.libsdl.org/SDL_WindowEvent)
* [SDL_KeyboardEvent](https://wiki.libsdl.org/SDL_KeyboardEvent)
* [SDL_TextEditingEvent](https://wiki.libsdl.org/SDL_TextEditingEvent)
* [SDL_TextInputEvent](https://wiki.libsdl.org/SDL_TextInputEvent)
* [SDL_MouseMotionEvent](https://wiki.libsdl.org/SDL_MouseMotionEvent)
* [SDL_MouseButtonEvent](https://wiki.libsdl.org/SDL_MouseButtonEvent)
* [SDL_MouseWheelEvent](https://wiki.libsdl.org/SDL_MouseWheelEvent)
* [SDL_JoyAxisEvent](https://wiki.libsdl.org/SDL_JoyAxisEvent)
* [SDL_JoyBallEvent](https://wiki.libsdl.org/SDL_JoyBallEvent)
* [SDL_JoyHatEvent](https://wiki.libsdl.org/SDL_JoyHatEvent)
* [SDL_JoyButtonEvent](https://wiki.libsdl.org/SDL_JoyButtonEvent)
* [SDL_JoyDeviceEvent](https://wiki.libsdl.org/SDL_JoyDeviceEvent)
* [SDL_ControllerAxisEvent](https://wiki.libsdl.org/SDL_ControllerAxisEvent)
* [SDL_ControllerButtonEvent](https://wiki.libsdl.org/SDL_ControllerButtonEvent)
* [SDL_ControllerDeviceEvent](https://wiki.libsdl.org/SDL_ControllerDeviceEvent)
* [SDL_AudioDeviceEvent](https://wiki.libsdl.org/SDL_AudioDeviceEvent)
* [SDL_QuitEvent](https://wiki.libsdl.org/SDL_QuitEvent)
* [SDL_UserEvent](https://wiki.libsdl.org/SDL_UserEvent)
* [SDL_SysWMEvent](https://wiki.libsdl.org/SDL_SysWMEvent)
* [SDL_TouchFingerEvent](https://wiki.libsdl.org/SDL_TouchFingerEvent)
* [SDL_MultiGestureEvent](https://wiki.libsdl.org/SDL_MultiGestureEvent)
* [SDL_DollarGestureEvent](https://wiki.libsdl.org/SDL_DollarGestureEvent)
* [SDL_DropEvent](https://wiki.libsdl.org/SDL_DropEvent)

### Nene:poll_events

```lua
function Nene:poll_events(evt_callbacks: facultative(Nene.EventsCallbacks))
```

You should call this method at the start of each game loop tick, it:
1. Polls all SDL events;
2. Updates the `self.quit` boolean value, it becomes `true` when the appplication will quit (see SDL_QuitEvent);
3. Calls the respective callbacks if `evt_callbacks` is given.

Related Nene documentation:
* [Nene.EventsCallbacks](#neneeventscallbacks)

Related SDL documentation:
* [SDL_PollEvent](https://wiki.libsdl.org/SDL_PollEvent)

### Nene:get_window_size

```lua
function Nene:get_window_size(): (cint, cint)
```

Get the size of the current window.

Related SDL documentation:
* [SDL_GetWindowSize](https://wiki.libsdl.org/SDL_GetWindowSize)

### Nene:get_scancode

```lua
function Nene:get_scancode(scancode: SDL_Scancode, is_down: facultative(boolean)): boolean
```

Returns the state of `scancode`.

* if `is_down` is `true`, then it returns if this scancode was just pressed on the current frame (that is, it wasn't pressed on the previous frame);
* if `is_down` is `false`, then it returns if this scancode was just released on the current frame (that is, it was pressed on the previous frame, but currently it isn't).
* if `is_down` is `nil`, then it returns if is simply currently pressed.

Related SDL documentation:
* [SDL_Scancode](https://wiki.libsdl.org/SDL_Scancode)
* [SDL_GetKeyboardState](https://wiki.libsdl.org/SDL_GetKeyboardState)

### Nene:get_mouse_button

```lua
function Nene:get_mouse_button(mouse_button: isize, is_down: facultative(boolean)): boolean
```

Returns the state of a mouse button.

* if `is_down` is `true`, then it returns if this mouse button was just pressed on the current frame (that is, it wasn't pressed on the previous frame);
* if `is_down` is `false`, then it returns if this mouse button was just released on the current frame (that is, it was pressed on the previous frame, but currently it isn't).
* if `is_down` is `nil`, then it returns if is simply currently pressed.

### Nene:set_render_draw_color

```lua
function Nene:set_render_draw_color(color: Color): boolean
```

Set the drawing color for rectangles, lines and points rendering.

Returns an `ok` status with `true` value if successful.

Related Nene documentation:
* [Color](colors.md#color)

Related SDL documentation:
* [SDL_Color](https://wiki.libsdl.org/SDL_Color)
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer)
* [SDL_SetRenderDrawColor](https://wiki.libsdl.org/SDL_SetRenderDrawColor)

### Nene:set_render_draw_blend_mode

```lua
function Nene:set_render_draw_blend_mode(blend_mode: SDL_BlendMode): boolean
```

Set the blend mode for drawing operations.

Returns an `ok` status with `true` value if successful.

Related SDL documentation:
* [SDL_BlendMode](https://wiki.libsdl.org/SDL_BlendMode)
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer)
* [SDL_SetRenderDrawBlendMode](https://wiki.libsdl.org/SDL_SetRenderDrawBlendMode)

### Nene:set_raw_texture_color_mod

```lua
function Nene:set_raw_texture_color_mod(raw_texture: *SDL_Texture, color: Color): boolean
```

Set an additional color value multiplied into render copy operations on the passed raw texture.

Returns an `ok` status with `true` value if successful.

Related SDL documentation:
* [SDL_SetTextureColorMod](https://wiki.libsdl.org/SDL_SetTextureColorMod)

### Nene:set_render_clip

```lua
function Nene:set_render_clip(rect: Rect): boolean
```

Set clip rectangle for rendering

Returns an `ok` status with `true` value if successful.

Related Nene documentation:
* [Math.Rect](math.md)

Related SDL documentation:
* [SDL_RenderSetClipRect](https://wiki.libsdl.org/SDL_RenderSetClipRect)

### Nene:render_clear

```lua
function Nene:render_clear(color: Color): boolean
```

it clears the rendering target with the given `color`.

Returns an `ok` status with `true` value if successful.

Related Nene documentation:
* [Color](colors.md#color)
* [Nene.set_render_draw_color](#neneset_render_draw_color)

Related SDL documentation:
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer)
* [SDL_RenderClear](https://wiki.libsdl.org/SDL_RenderClear)

### Nene:render_draw_line

```lua
function Nene:render_draw_line(origin: Vec2, destination: Vec2, color: facultative(Color)): boolean
```

renders a line from `origin` to `destination` with the given `color`.

Returns an `ok` status with `true` value if successful.

Related Nene documentation:
* [Math.Vec2](math.md#mathvec2)
* [Color](colors.md#color)

Related SDL documentation:
* [SDL_RenderDrawLine](https://wiki.libsdl.org/SDL_RenderDrawLine)

### Nene:render_draw_rect

```lua
function Nene:render_draw_rect(rectangle: Rect, use_lines: boolean, color: facultative(Color)): boolean
```

renders the given `rectangle` with the given `color`; it will be filled if `use_lines` is `false`.

Returns an `ok` status with `true` value if successful.

Related Nene documentation:
* [Math.Rect](math.md)

Related SDL documentation:
* [SDL_RenderDrawRect](https://wiki.libsdl.org/SDL_RenderDrawRect)
* [SDL_RenderFillRect](https://wiki.libsdl.org/SDL_RenderFillRect)

### Nene:render_copy

```lua
function Nene:render_copy(
  texture: *SDL_Texture,
  source: facultative(Rect),
  destination: facultative(Rect),
  angle: facultative(number),
  center: facultative(Vec2),
  flip_horizontal: facultative(boolean),
  flip_vertical: facultative(boolean)
): boolean
```

Wrapper of `SDL_RenderCopy`.
Copies `texture` on the rendering target.

By default the whole texture is copied unless the `source` rectangle is given,
in this case only the "source" part of the texture will be copied.

By default the texture will be copied on the whole rendering target unless the `destination` rectangle is given,
in this case it will be copied at this "destination" part of the rendering target.

Returns an `ok` status with `true` value if successful.

Related Nene documentation:
* [Math.Rect](math.md)

Related SDL documentation:
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)
* [SDL_RenderCopy](https://wiki.libsdl.org/SDL_RenderCopy)
* [SDL_RenderCopyEx](https://wiki.libsdl.org/SDL_RenderCopyEx)

### Nene:set_render_target

```lua
function Nene:set_render_target(texture_target: facultative(*SDL_Texture)): boolean
```

Set a `texture_target` as rendering target.

If `texture_target` is not given, then the target will be the window.

Returns an `ok` status with `true` value if successful.

Related SDL documentation:
* [SDL_SetRenderTarget](https://wiki.libsdl.org/SDL_SetRenderTarget)

### Nene:create_raw_texture

```lua
function Nene:create_raw_texture(format: uint32, access: SDL_TextureAccess, width: cint, height: cint): (boolean, *SDL_Texture)
```

Wrapper of `SDL_CreateTexture`.

Creates a Texture for the rendering context.

Returns an `ok` status with `true` value if successful and the created Texture as `SDL_Texture`.

Related SDL documentation:
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)
* [SDL_CreateTexture](https://wiki.libsdl.org/SDL_CreateTexture)

### Nene:create_raw_texture_from_surface

```lua
function Nene:create_raw_texture_from_surface(surface_ref: *SDL_Surface): (boolean, *SDL_Texture)
```

Wrapper of `SDL_CreateTextureFromSurface`.

Creates a Texture from the given surface.

Returns an `ok` status with `true` value if successful and the created Texture as `SDL_Texture`.

Related SDL documentation:
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)
* [SDL_Surface](https://wiki.libsdl.org/SDL_Surface)
* [SDL_CreateTextureFromSurface](https://wiki.libsdl.org/SDL_CreateTextureFromSurface)

### Nene:render_present

```lua
function Nene:render_present()
```

presents the SDL's composed backbuffer (any rendering operation is done on the SDL's backbuffer,
this function presents it).

This also does some modification on the state, preparing it for the next frame.

Related SDL documentation:
* [SDL_RenderPresent](https://wiki.libsdl.org/SDL_RenderPresent)

### Nene.init

```lua
function Nene.init(
  title: string,
  window_size_x: integer, window_size_y: integer,
  pos_x: facultative(integer), pos_y: facultative(integer),
  flags: facultative(uint32)
): (boolean, *Nene)
```

try to initialize and return a new initilized core state.

returns:
  * a boolean that indicates true on success
  * a new state, only filled on success

notes:
  * You always should first check if the initialization
  succeeded before trying to use the state.

Code example:
```lua
-- initialize nene
local ok, nene = Nene.init('My game title', 1280, 720)

-- test if nene got successfully initialized, here `assert`
-- is used instead of `check`, this way, this test is also done
-- in release mode.
assert(ok, 'error: nene initialization failed')

-- defer nene termination, to release resources used by nene
defer
  nene:terminate()
end
```

Related SDL documentation:
* [SDL_Init](https://wiki.libsdl.org/SDL_Init)
* [SDL_CreateWindow](https://wiki.libsdl.org/SDL_CreateWindow)
* [SDL_CreateRenderer](https://wiki.libsdl.org/SDL_CreateRenderer)
* [SDL_SetRenderDrawBlendMode](https://wiki.libsdl.org/SDL_SetRenderDrawBlendMode)

Related SDL_mixer documentation:
* [Mix_Init](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_9.html)
* [Mix_OpenAudio](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_11.html)

Related SDL_image documentation:
* [IMG_Init](https://www.libsdl.org/projects/SDL_image/docs/SDL_image_8.html)

Related SDL_ttf documentation:
* [TTF_Init](https://github.com/libsdl-org/SDL_ttf/blob/9a2cb0e452a52045419c3554e4c6696a3cd0a714/SDL_ttf.h#L110-L111)

### Nene:terminate

```lua
function Nene:terminate()
```

Finalize application and quits all SDL subsystems

Related SDL documentation:
* [SDL_DestroyRenderer](https://wiki.libsdl.org/SDL_DestroyRenderer)
* [SDL_DestroyWindow](https://wiki.libsdl.org/SDL_DestroyWindow)
* [SDL_Quit](https://wiki.libsdl.org/SDL_Quit)

Related SDL_image documentation:
* [IMG_Quit](https://www.libsdl.org/projects/SDL_image/docs/SDL_image_9.html)

Related SDL_ttf documentation:
* [TTF_Quit](https://github.com/libsdl-org/SDL_ttf/blob/9a2cb0e452a52045419c3554e4c6696a3cd0a714/SDL_ttf.h)

Related SDL_mixer documentation:
* [Mix_CloseAudio](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_12.html)
* [Mix_Quit](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_10.html)

### Nene:__close

```lua
function Nene:__close()
```

Effectively the same as `terminate`, called when a to-be-closed variable goes out of scope.

---