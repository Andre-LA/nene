### Summary
* [emscripten_set_main_loop](#emscripten_set_main_loop)
* [Nene](#nene)
* [Nene.initialized](#neneinitialized)
* [Nene.instance](#neneinstance)
* [Nene.Scancode](#nenescancode)
* [Nene.BlendMode](#neneblendmode)
* [Nene.PixelFormat](#nenepixelformat)
* [Nene.EventsCallbacks](#neneeventscallbacks)
* [Nene:poll_events](#nenepoll_events)
* [Nene:get_window_size](#neneget_window_size)
* [Nene:get_scancode_down](#neneget_scancode_down)
* [Nene:get_scancode_up](#neneget_scancode_up)
* [Nene:get_scancode](#neneget_scancode)
* [Nene.cursor_visibility](#nenecursor_visibility)
* [Nene:get_mouse_button_down](#neneget_mouse_button_down)
* [Nene:get_mouse_button_up](#neneget_mouse_button_up)
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

## init

The core of Nene, this is the main module, which should be initialized and terminated in the same life-cycle as
your game.

### emscripten_set_main_loop

```lua
global function emscripten_set_main_loop(func: function(), fps: cint, simulate_infinite_loop: cint)
```

This global function is only imported when `is_emscripten` is set, that is, when the emscripten is used to make a web build
note that the types `integer`, `uinteger` and `number` are also set to be 32-bit.

Related Emscripten documentation:
- [emscripten_set_main_loop](https://emscripten.org/docs/api_reference/emscripten.h.html#c.emscripten_set_main_loop)

### Nene

```lua
local Nene = @record{
  -- general data
  quit: boolean,        -- `true` when the application will quit, `false` otherwise;
  current_time: uint32, -- time since initialization (in milliseconds!).
  delta_time: number,   -- frame's delta time (in seconds!), that is, how much time passed between previous and current frame.
  render_offset: Vec2,  -- rendering offset, this is useful for some basic camera control

  -- SDL references
  window: *SDL_Window,     -- reference to the window created on initialization; using more than 1 window is a non-goal for Nene;
  renderer: *SDL_Renderer, -- reference to the window's renderer, created on initialization

  -- keyboard state
  keyboard_state: [SDL_NUM_SCANCODES]boolean,      -- store the state of keyboard in the current frame (`true` means "pressed")
  prev_keyboard_state: [SDL_NUM_SCANCODES]boolean, -- store the state of keyboard in the previous frame (`true` means "pressed")

  -- mouse state
  mouse_pos: Vec2,                 -- store the mouse position relative to window
  mouse_relative_motion: Vec2,     -- store the mouse relative motion
  mouse_buttons: [32]boolean,      -- store the mouse buttons state, each index per button (0 is left-button, 1 is middle-button, 2 is right-button)
  prev_mouse_buttons: [32]boolean, -- same as mouse_buttons, but from the previous frame
}
```

The core of Nene, it contains pointers made by SDL2, and doesn't requires any other Nene modules (except
`Math` and `Color`).

Many of the `Core`'s functions wraps SDL's functions actually.

### Nene.initialized

```lua
local Nene.initialized: boolean
```

The initialization state of Nene, it's set to `true` by `Nene.init` and
set to `false` by `Nene.terminate`, it shouldn't be modified by any other function.

### Nene.instance

```lua
function Nene.instance(): *Nene
```

[Check](https://nelua.io/libraries/#check)s if Nene is initialized and then returns the running nene instance.

### Nene.Scancode

```lua
local Nene.Scancode: type
```

Nene's scancodes, alias of [SDL_Scancode](https://wiki.libsdl.org/SDL_Scancode), for more details, open [scancode's documentation](scancode.md)

### Nene.BlendMode

```lua
local Nene.BlendMode = @enum(cint){
  None    = SDL_BLENDMODE_NONE,
  Blend   = SDL_BLENDMODE_BLEND,
  Add     = SDL_BLENDMODE_ADD,
  Mod     = SDL_BLENDMODE_MOD,
  Mul     = SDL_BLENDMODE_MUL,
  Invalid = SDL_BLENDMODE_INVALID,
}
```

Nene's blend modes, alias of [SDL_BlendMode](https://wiki.libsdl.org/SDL_BlendMode).

### Nene.PixelFormat

```lua
local Nene.PixelFormat = @enum(cint){
  Unknown = SDL_PIXELFORMAT_UNKNOWN,
  Index1LSB = SDL_PIXELFORMAT_INDEX1LSB,
  Index1MSB = SDL_PIXELFORMAT_INDEX1MSB,
  Index4LSB = SDL_PIXELFORMAT_INDEX4LSB,
  Index4MSB = SDL_PIXELFORMAT_INDEX4MSB,
  Index8 = SDL_PIXELFORMAT_INDEX8,
  RGB332 = SDL_PIXELFORMAT_RGB332,
  XRGB4444 = SDL_PIXELFORMAT_XRGB4444,
  RGB444 = SDL_PIXELFORMAT_RGB444,
  XBGR4444 = SDL_PIXELFORMAT_XBGR4444,
  BGR444 = SDL_PIXELFORMAT_BGR444,
  XRGB1555 = SDL_PIXELFORMAT_XRGB1555,
  RGB555 = SDL_PIXELFORMAT_RGB555,
  XBGR1555 = SDL_PIXELFORMAT_XBGR1555,
  BGR555 = SDL_PIXELFORMAT_BGR555,
  ARGB4444 = SDL_PIXELFORMAT_ARGB4444,
  RGBA4444 = SDL_PIXELFORMAT_RGBA4444,
  ABGR4444 = SDL_PIXELFORMAT_ABGR4444,
  BGRA4444 = SDL_PIXELFORMAT_BGRA4444,
  ARGB1555 = SDL_PIXELFORMAT_ARGB1555,
  RGBA5551 = SDL_PIXELFORMAT_RGBA5551,
  ABGR1555 = SDL_PIXELFORMAT_ABGR1555,
  BGRA5551 = SDL_PIXELFORMAT_BGRA5551,
  RGB565 = SDL_PIXELFORMAT_RGB565,
  BGR565 = SDL_PIXELFORMAT_BGR565,
  RGB24 = SDL_PIXELFORMAT_RGB24,
  BGR24 = SDL_PIXELFORMAT_BGR24,
  XRGB8888 = SDL_PIXELFORMAT_XRGB8888,
  RGB888 = SDL_PIXELFORMAT_RGB888,
  RGBX8888 = SDL_PIXELFORMAT_RGBX8888,
  XBGR8888 = SDL_PIXELFORMAT_XBGR8888,
  BGR888 = SDL_PIXELFORMAT_BGR888,
  BGRX8888 = SDL_PIXELFORMAT_BGRX8888,
  ARGB8888 = SDL_PIXELFORMAT_ARGB8888,
  RGBA8888 = SDL_PIXELFORMAT_RGBA8888,
  ABGR8888 = SDL_PIXELFORMAT_ABGR8888,
  BGRA8888 = SDL_PIXELFORMAT_BGRA8888,
  ARGB2101010 = SDL_PIXELFORMAT_ARGB2101010,
  RGBA32 = SDL_PIXELFORMAT_RGBA32,
  ARGB32 = SDL_PIXELFORMAT_ARGB32,
  BGRA32 = SDL_PIXELFORMAT_BGRA32,
  ABGR32 = SDL_PIXELFORMAT_ABGR32,
  YV12 = SDL_PIXELFORMAT_YV12,
  IYUV = SDL_PIXELFORMAT_IYUV,
  YUY2 = SDL_PIXELFORMAT_YUY2,
  UYVY = SDL_PIXELFORMAT_UYVY,
  YVYU = SDL_PIXELFORMAT_YVYU,
  NV12 = SDL_PIXELFORMAT_NV12,
  NV21 = SDL_PIXELFORMAT_NV21,
  ExternalOES = SDL_PIXELFORMAT_EXTERNAL_OES,
}
```

Nene's pixel formats, alias of [SDL_PixelFormatEnum](SDL_PixelFormatEnum).

### Nene.EventsCallbacks

```lua
local Nene.EventsCallbacks = @record{
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

Related Nene documentation:
- [Nene.poll_events](#nenepoll_events)

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
function Nene:poll_events(evt_callbacks: Nene.EventsCallbacks)
```

You should call this method at the start of each game loop tick, it:
1. Polls all SDL events;
2. Updates the `self.quit` boolean value, it becomes `true` when the appplication will quit (see SDL_QuitEvent);
3. Calls the respective callbacks.

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

### Nene:get_scancode_down

```lua
function Nene:get_scancode_down(scancode: Nene.Scancode): boolean
```

Returns if the passed `scancode` it's pressed down, that is, if it's currently pressed now, but it wasn't on
the previous frame.

> Scancode it's a keyboard-layout independent "key", for more details, read SDL's documentation about Scancodes.

Related Nene documentation:
* [Scancode](scancode.md)
* [Nene.get_scancode](init.md#neneget_scancode)
* [Nene.get_scancode_up](init.md#neneget_scancode_up)

Related SDL documentation:
* [SDL_Scancode](https://wiki.libsdl.org/SDL_Scancode)
* [SDL_GetKeyboardState](https://wiki.libsdl.org/SDL_GetKeyboardState)

### Nene:get_scancode_up

```lua
function Nene:get_scancode_up(scancode: Nene.Scancode): boolean
```

Returns if the passed `scancode` was unpressed, that is, if it isn't currently pressed now, but it was on
the previous frame.

Related Nene documentation:
* [Scancode](scancode.md)
* [Nene.get_scancode](init.md#neneget_scancode)
* [Nene.get_scancode_down](init.md#neneget_scancode_down)

Related SDL documentation:
* [SDL_Scancode](https://wiki.libsdl.org/SDL_Scancode)
* [SDL_GetKeyboardState](https://wiki.libsdl.org/SDL_GetKeyboardState)

### Nene:get_scancode

```lua
function Nene:get_scancode(scancode: Nene.Scancode, is_down: facultative(boolean)): boolean
```

Returns the current state of `scancode`, that is, if it's currently pressed now.

> Scancode it's a keyboard-layout independent "key", for more details, read SDL's documentation about Scancodes.

Related Nene documentation:
* [Scancode](scancode.md)
* [Nene.get_scancode_down](init.md#neneget_scancode_down)
* [Nene.get_scancode_up](init.md#neneget_scancode_up)

Related SDL documentation:
* [SDL_Scancode](https://wiki.libsdl.org/SDL_Scancode)
* [SDL_GetKeyboardState](https://wiki.libsdl.org/SDL_GetKeyboardState)

### Nene.cursor_visibility

```lua
function Nene.cursor_visibility(new_visibility: facultative(boolean)): (boolean, boolean)
```

This functions returns if the mouse cursor is visible or not, you can set this status by passing a boolean value.

This function returns two booleans:

1. It's the `ok` status, it's `true` when the function was successful.
2. It's the cursor visibility status, it's `true` when it's visible.

If you want to change the visibility, pass a boolean argument, where `true` make it visible.

Related SDL documentation:
* [SDL_ShowCursor](https://wiki.libsdl.org/SDL_ShowCursor)

### Nene:get_mouse_button_down

```lua
function Nene:get_mouse_button_down(mouse_button: isize): boolean
```

Returns if the `mouse_button`-nth mouse button get's pressed, that is,
if this mouse button was just pressed on the current frame, but it wasn't pressed on the previous frame.

> 0 is the left-click, 1 is middle-click, 2 is right-click, and so on.

Related Nene documentation:
* [Nene.get_mouse_button](init.md#neneget_mouse_button)
* [Nene.get_mouse_button_up](init.md#neneget_mouse_button_up)

Related SDL documentation:
* [SDL_GetMouseState](https://wiki.libsdl.org/SDL_GetMouseState)

### Nene:get_mouse_button_up

```lua
function Nene:get_mouse_button_up(mouse_button: isize): boolean
```

Returns if the `mouse_button`-nth mouse button got unpressed, that is,
if this mouse button isn't pressed on the current frame, but it was pressed on the previous frame.

> 0 is the left-click, 1 is middle-click, 2 is right-click, and so on.

Related Nene documentation:
* [Nene.get_mouse_button](init.md#neneget_mouse_button)
* [Nene.get_mouse_button_down](init.md#neneget_mouse_button_down)

Related SDL documentation:
* [SDL_GetMouseState](https://wiki.libsdl.org/SDL_GetMouseState)

### Nene:get_mouse_button

```lua
function Nene:get_mouse_button(mouse_button: isize, is_down: facultative(boolean)): boolean
```

Returns if the `mouse_button`-nth mouse button is currently pressed.

> 0 is the left-click, 1 is middle-clic, 2 is right-click, and so on.

Related Nene documentation:
* [Nene.get_mouse_button_down](init.md#neneget_mouse_button_down)
* [Nene.get_mouse_button_up](init.md#neneget_mouse_button_up)

Related SDL documentation:
* [SDL_GetMouseState](https://wiki.libsdl.org/SDL_GetMouseState)

### Nene:set_render_draw_color

```lua
function Nene:set_render_draw_color(color: Color): boolean
```

Set the drawing color for rectangles, lines and points rendering.

Returns an `ok` status with `true` value if successful.

Related Nene documentation:
* [Color](color.md#color)

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
function Nene:set_render_clip(rect: facultative(Rect)): boolean
```

Set clip rectangle for rendering.

Set the passed `rect` as the clipping rectangle, if `nil` is passed, then the clipping is disabled.

Returns an `ok` status with `true` value if successful.

Related Nene documentation:
* [Math.Rect](math/rect.md#rect)

Related SDL documentation:
* [SDL_RenderSetClipRect](https://wiki.libsdl.org/SDL_RenderSetClipRect)

### Nene:render_clear

```lua
function Nene:render_clear(color: facultative(Color)): boolean
```

it clears the rendering target with the given `color`.

Returns an `ok` status with `true` value if successful.

Related Nene documentation:
* [Color](color.md#color)
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
* [Math.Vec2](math/vec2.md#vec2)
* [Color](color.md#color)

Related SDL documentation:
* [SDL_RenderDrawLine](https://wiki.libsdl.org/SDL_RenderDrawLine)

### Nene:render_draw_rect

```lua
function Nene:render_draw_rect(rectangle: Rect, use_lines: boolean, color: facultative(Color)): boolean
```

renders the given `rectangle` with the given `color`; it will be filled if `use_lines` is `false`.

Returns an `ok` status with `true` value if successful.

Related Nene documentation:
* [Math.Rect](math/rect.md#rect)

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
* [Math.Rect](math/rect.md#rect)

Related SDL documentation:
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)
* [SDL_RenderCopy](https://wiki.libsdl.org/SDL_RenderCopy)
* [SDL_RenderCopyEx](https://wiki.libsdl.org/SDL_RenderCopyEx)

### Nene:set_render_target

```lua
function Nene:set_render_target(texture_target: facultative(*SDL_Texture)): boolean
```

Set a `texture_target` as rendering target.

If `nilptr` is given for `texture_target`, then the target will be the window itself.

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

> Note: You can pass a `Texture.Acess` argument on the `access` parameter.

Related Nene documentation:
* [Texture.Access](texture.md#textureaccess)

Related SDL documentation:
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)
* [SDL_CreateTexture](https://wiki.libsdl.org/SDL_CreateTexture)
* [SDL_TextureAccess](https://wiki.libsdl.org/SDL_TextureAccess)

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

-- defers nene termination, to release resources used by nene;
-- you can also declare nene as a to-be-closed variable using `nene <close> = ...`
-- syntax, this way, nene will be terminated at the scope end and the defer block
-- will be unnecessary.
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
