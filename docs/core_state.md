# nene/core_state.nelua
## Nene.CoreState (record)
instead of a internal state, the state is  
exported and should be used externally.  
  
Also, great part of the SDL API only works after initialization  
so, the ideia is that a Nene.CoreState lives just as the SDL  
after initialization and before quit.  
  
SDL functions that should be only used after initialization  
should be abstracted as a Nene.CoreState method, the functions  
  
that doesn't contains this limitation should be a Nene  
function instead (which is something that needs a review).  
  
Note that Nene is made to use only one window.
```lua
global Nene.CoreState = @record{
  initialized: boolean,
  quit: boolean,
  window: *SDL_Window,
  renderer: *SDL_Renderer,
  keyboard_state: span(uint8),
  current_music: Nene.Music,
  previous_time: uint32,
  camera: Nene.Camera,
  --screen_texture: Nene.Texture (added later through meta-programming)
}
```

## Nene.CoreState:set_render_target (function)
Set `target_tex` texture as a render target
```lua
function Nene.CoreState:set_render_target(target_tex: facultative(Nene.Texture))
```

## Nene.CoreState:get_window_size (function)
Get the size of current window
```lua
function Nene.CoreState:get_window_size(): Nene.Math.Vec2
```

## Nene.CoreState:get_screen_size (function)
Get the screen size
```lua
function Nene.CoreState:get_screen_size(): Nene.Math.Vec2
```

## Nene.CoreState:get_render_pos (function)
Get a proper drawing origin position (left-up point) considering the  
camera's position and the window's screen size
```lua
function Nene.CoreState:get_render_pos(pos: Nene.Math.Vec2): Nene.Math.Vec2
```

## Nene.CoreState:play_music (function)
plays the current music  
when `true` is passed on `loop` parameter, the music will loop forever;  
when an `integer` is passed on `loop` parameter, the music will loop `loop` times
```lua
function Nene.CoreState:play_music(music: Nene.Music, loop: overload(boolean, integer, niltype))
```

## Nene.CoreState:stop_music (function)
stops the current music
```lua
function Nene.CoreState:stop_music()
```

## Nene.Callbacks (record)
The callbacks that should be passed on `pool_events`
```lua
global Nene.Callbacks = @record{
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

## Nene.CoreState:pool_events (function)
You should call this method at the start of each game loop tick, it:  
1. Pools all SDL events  
2. Calls the respective callbacks if `evt_callbacks` is given  
3. Updates the internal state data
```lua
function Nene.CoreState:pool_events(evt_callbacks: facultative(Nene.Callbacks))
```

## Nene.CoreState:get_scancode (function)
returns if a `scancode` is pressed
```lua
function Nene.CoreState:get_scancode(scancode: SDL_Scancode): boolean
```

## Nene.CoreState:load_font (function)
try to load a font from a file  
it returns:  
* a boolean that indicates the success or failure of procedure  
* an error message string, it will be an empty string on success  
* the font, properly initialized on success
```lua
function Nene.CoreState:load_font(filename: string, ptsize: integer): (boolean, string, Nene.Font)
```

## Nene.CoreState:load_sound (function)
try to load a sound from a file,  
it returns:  
* a boolean that indicates the success or failure of procedure  
* an error message string, it will be an empty string on success  
* the sound, properly initialized on success
```lua
function Nene.CoreState:load_sound(filename: string): (boolean, string, Nene.Sound)
```

## Nene.CoreState:load_music (function)
try to load a music from a file,  
it returns:  
* a boolean that indicates the success or failure of procedure  
* an error message string, it will be an empty string on success  
* the music, properly initialized on success
```lua
function Nene.CoreState:load_music(filename: string): (boolean, string, Nene.Music)
```

## Nene.CoreState:load_texture (function)
try to load a texture from a file  
it returns:  
* a boolean that indicates the success or failure of procedure  
* an error message string, it will be a empty string on success  
* the texture, properly initialized on success
```lua
function Nene.CoreState:load_texture(filename: string): (boolean, string, Nene.Texture)
```

## Nene.CoreState:render_draw_atlas_frame (function)
Draw an `atlas`'s `frame` at a specific `position`.  
if a value of type `SpriteSheet` or `Tilemap` is passed at the `atlas` argument,  
the respective atlas of these types will be used.
```lua
function Nene.CoreState:render_draw_atlas_frame(
```

## Nene.CoreState:render_draw_tilemap (function)
renders a whole `tilemap` in the given `position` using the given `color` tint.
```lua
function Nene.CoreState:render_draw_tilemap(tilemap: Nene.Tilemap, position: Nene.Math.Vec2, color: Nene.Color)
```

## Nene.CoreState:render_clear (function)
clears the screen with the `given` color
```lua
function Nene.CoreState:render_clear(color: Nene.Color)
```

## Nene.CoreState:render_draw_rect (function)
renders a `rectangle` on the screen, with the given `color`; it will be filled if `use_lines` is `false`.
```lua
function Nene.CoreState:render_draw_rect(rectangle: Nene.Math.Rect, use_lines: boolean, color: Nene.Color)
```

## Nene.CoreState:get_ms_time (function)
get the current time relative to SDL initialization (done at the `init` method)
```lua
function Nene.CoreState:get_ms_time()
```

## Nene.CoreState:get_deltatime (function)
get the current delta time relative to the time of previous frame  
in other words, the difference of time between the current and previous frame.
```lua
function Nene.CoreState:get_deltatime()
```

## Nene.CoreState:render_present (function)
presents the rendered screen by presenting the composed backbuffer (any rendering operation  
is done on the SDL's backbuffer, this function presents it)  
  
This also does some operations that finishes the frame on the state.
```lua
function Nene.CoreState:render_present()
```

## Nene.init (function)
try to initialize and return a new initilized  
core state.  
returns:  
  * a boolean that indicates true on success  
  * a string error message on failure (or empty otherwise)  
  * a new state, only filled on success  
notes:  
  You always should first check if the initialization  
  succeeded before trying to use the state
```lua
function Nene.init(
```

## Nene.CoreState:terminate (function)
Finalize application and quits all SDL subsystems
```lua
function Nene.CoreState:terminate()
```
