### Nene

```lua
global Nene = @record{
  quit: boolean,           -- `true` when the application will quit, `false` otherwise;
  delta_time: number,      -- frame's delta time (in seconds!), that is, how much time passed between previous and current frame.
  window: *SDL_Window,     -- reference to the window created on initialization; using more than 1 window is a non-goal for Nene;
  renderer: *SDL_Renderer, -- reference to the window's renderer, created on initialization
  keyboard_state: [(SDL_NUM_SCANCODES)]boolean,      -- holds the state of keyboard in the current frame (`true` means "pressed")
  prev_keyboard_state: [(SDL_NUM_SCANCODES)]boolean, -- holds the state of keyboard in the previous frame (`true` means "pressed")
}
```

The core of Nene, it contains pointers made by SDL2, and doesn't requires any other Nene modules (except
`Math`, `Color` and all SDL wrappers).

Many of the `Core`'s functions wraps wrapper's functions actually.

### Nene.initialized

```lua
global Nene.initialized
```

The initialization state of Nene, it's set to `true` by `Nene.init` and
set to `false` by `Nene.terminate`, it shouldn't be modified by any other function.

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

### Nene:poll_events

```lua
function Nene:poll_events(evt_callbacks: facultative(Nene.EventsCallbacks))
```

You should call this method at the start of each game loop tick, it:
1. Pools all SDL events;
2. Updates the `self.quit` boolean value, it becomes `true` when the appplication will quit (see SDL_QuitEvent);
3. Calls the respective callbacks if `evt_callbacks` is given.

Related SDL documentation:
* [SDL_Event](https://wiki.libsdl.org/SDL_Event)
* [SDL_QuitEvent](https://wiki.libsdl.org/SDL_QuitEvent)
* [SDL_Scancode](https://wiki.libsdl.org/SDL_Scancode)

Related SDLWrapper documentation:
* [SDLWrapper.poll_event](wrappers/sdl.md#sdlwrapperpoll_event)
* [SDLWrapper.get_keyboard_state](wrappers/sdl.md#sdlwrapperget_keyboard_state)

### Nene:get_window_size

```lua
function Nene:get_window_size(): (cint, cint)
```

Get the size of the current window.

Related SDLWrapper documentation:
* [SDLWrapper.get_window_size](wrappers/sdl.md#sdlwrapperget_window_size)

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

Related SDLWrapper documentation:
* [SDLWrapper.get_keyboard_state](wrappers/sdl.md#sdlwrapperget_keyboard_state)

### Nene:set_render_draw_color

```lua
function Nene:set_render_draw_color(color: Color)
```

Set rendering draw color

Related Nene documentation:
* [Color](colors.md#color)

Related SDL documentation:
* [SDL_Color](https://wiki.libsdl.org/SDL_Color)
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer)

Related SDLWrapper documentation:
* [SDLWrapper.set_render_draw_color](wrappers/sdl.md#sdlwrapperset_render_draw_color)

### Nene:render_clear

```lua
function Nene:render_clear(color: Color)
```

it clears the rendering target with the given `color`.

Related Nene documentation:
* [Color](colors.md#color)
* [Nene.set_render_draw_color](#neneset_render_draw_color)

Related SDL documentation:
* [SDL_Renderer](https://wiki.libsdl.org/SDL_Renderer)

Related SDLWrapper documentation:
* [SDLWrapper.render_clear](wrappers/sdl.md#sdlwrapperrender_clear)

### Nene:render_draw_line

```lua
function Nene:render_draw_line(origin: Math.Vec2, destination: Math.Vec2, color: Color)
```

renders a line from `origin` to `destination` with the given `color`.

Related Nene documentation:
* [Math.Vec2](math.md#mathvec2)
* [Color](colors.md#color)

Related SDLWrapper documentation:
* [SDLWrapper.render_draw_line](wrappers/sdl.md#sdlwrapperrender_draw_line)

### Nene:render_draw_rect

```lua
function Nene:render_draw_rect(rectangle: Math.Rect, use_lines: boolean, color: Color)
```

renders the given `rectangle` with the given `color`; it will be filled if `use_lines` is `false`.

Related Nene documentation:
* [Math.Rect](math.md)

Related SDLWrapper documentation:
* [SDLWrapper.render_draw_rect](wrappers/sdl.md#sdlwrapperrender_draw_rect)
* [SDLWrapper.render_fill_rect](wrappers/sdl.md#sdlwrapperrender_fill_rect)

### Nene:render_copy

```lua
function Nene:render_copy(texture: *SDL_Texture, source: facultative(Math.Rect), destination: facultative(Math.Rect))
```

Wrapper of `SDL_RenderCopy`.
Copies `texture` on the rendering target.

By default the whole texture is copied unless the `source` rectangle is given,
in this case only the "source" part of the texture will be copied.

By default the texture will be copied on the whole rendering target unless the `destination` rectangle is given,
in this case it will be copied at this "destination" part of the rendering target.

Related SDL documentation:
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)

Related SDLWrapper documentation:
* [SDLWrapper.render_copy](wrappers/sdl.md#sdlwrapperrender_copy)

### Nene:set_render_target

```lua
function Nene:set_render_target(texture: facultative(*SDL_Texture))
```

Set a `texture` as rendering target.

If `texture` is not given, then the target will be the window.

Related SDLWrapper documentation:
* [SDLWrapper.set_render_target](wrappers/sdl.md#sdlwrapperset_render_target)

### Nene:create_texture_from_surface

```lua
function Nene:create_texture_from_surface(surface_ref: *SDL_Surface): (*SDL_Texture, boolean)
```

Wrapper of `SDL_CreateTextureFromSurface`.

Creates a Texture from the given surface.

Related SDL documentation:
* [SDL_Texture](https://wiki.libsdl.org/SDL_Texture)
* [SDL_Surface](https://wiki.libsdl.org/SDL_Surface)

Related SDLWrapper documentation:
* [SDLWrapper.create_texture_from_surface](wrappers/sdl.md#sdlwrappercreate_texture_from_surface)

### Nene:render_present

```lua
function Nene:render_present()
```

presents the SDL's composed backbuffer (any rendering operation is done on the SDL's backbuffer,
this function presents it).

This also does some modification on the state, preparing it for the next frame.

Related SDLWrapper documentation:
* [SDLWrapper.render_present](wrappers/sdl.md#sdlwrapperrender_present)

### Nene.init

```lua
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

Related SDLWrapper documentation:
* [SDLWrapper.sdl_init](wrappers/sdl.md#sdlwrappersdl_init)
* [SDLWrapper.create_window](wrappers/sdl.md#sdlwrappercreate_window)
* [SDLWrapper.create_renderer](wrappers/sdl.md#sdlwrappercreate_renderer)
* [SDLWrapper.set_render_draw_blend_mode](wrappers/sdl.md#sdlwrapperset_render_draw_blend_mode)

Related MixWrapper documentation:
* [MixWrapper.mix_init](wrappers/mix.md#mixwrappermix_init)
* [MixWrapper.open_audio](wrappers/mix.md#mixwrapperopen_audio)

Related ImgWrapper documentation:
* [ImgWrapper.img_init](wrappers/img.md#imgwrapperimg_init)

Related TTFWrapper documentation:
* [TTFWrapper.ttf_init](wrappers/ttf.md#ttfwrapperttf_init)

### Nene:terminate

```lua
function Nene:terminate()
```

Finalize application and quits all SDL subsystems

Related SDLWrapper documentation:
* [SDLWrapper.destroy_renderer](wrappers/sdl.md#sdlwrapperdestroy_renderer)
* [SDLWrapper.destroy_window](wrappers/sdl.md#sdlwrapperdestroy_window)
* [SDLWrapper.sdl_quit](wrappers/sdl.md#sdlwrapper sdl_quit)

Related ImgWrapper documentation:
* [ImgWrapper.img_quit](wrappers/img.md#imgwrapperimg_quit)

Related TTFWrapper documentation:
* [TTFWrapper.ttf_quit](wrappers/ttf.md#ttfwrapperttf_quit)

Related MixWrapper documentation:
* [MixWrapper.close_audio](wrappers/mix.md#mixwrapperclose_audio)
* [MixWrapper.mix_quit](wrappers/mix.md#mixwrappermix_quit)

---
