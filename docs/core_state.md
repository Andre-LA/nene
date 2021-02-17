# nene/core_state.nelua
## Nene.CoreState (record)
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
```lua
function Nene.CoreState:set_render_target(target_tex: facultative(Nene.Texture))
```

## Nene.CoreState:get_window_size (function)
```lua
function Nene.CoreState:get_window_size(): Nene.Math.Vec2
```

## Nene.CoreState:get_screen_size (function)
```lua
function Nene.CoreState:get_screen_size(): Nene.Math.Vec2
```

## Nene.CoreState:get_render_pos (function)
```lua
function Nene.CoreState:get_render_pos(pos: Nene.Math.Vec2): Nene.Math.Vec2
```

## Nene.CoreState:play_music (function)
```lua
function Nene.CoreState:play_music(music: Nene.Music, loop: overload(boolean, integer, niltype))
```

## Nene.CoreState:stop_music (function)
```lua
function Nene.CoreState:stop_music()
```

## Nene.Callbacks (record)
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
```lua
function Nene.CoreState:pool_events(evt_callbacks: facultative(Nene.Callbacks))
```

## Nene.CoreState:get_key (function)
```lua
function Nene.CoreState:get_key(scancode: SDL_Scancode): boolean
```

## Nene.CoreState:load_font (function)
```lua
function Nene.CoreState:load_font(filename: stringview, ptsize: integer): (boolean, stringview, Nene.Font)
```

## Nene.CoreState:load_sound (function)
```lua
function Nene.CoreState:load_sound(filename: stringview): (boolean, stringview, Nene.Sound)
```

## Nene.CoreState:load_music (function)
```lua
function Nene.CoreState:load_music(filename: stringview): (boolean, stringview, Nene.Music)
```

## Nene.CoreState:load_texture (function)
```lua
function Nene.CoreState:load_texture(filename: stringview): (boolean, stringview, Nene.Texture)
```

## Nene.CoreState:render_draw_atlas_frame (function)
```lua
function Nene.CoreState:render_draw_atlas_frame(
```

## Nene.CoreState:render_draw_tilemap (function)
```lua
function Nene.CoreState:render_draw_tilemap(tilemap: Nene.Tilemap, position: Nene.Math.Vec2, color: Nene.Color)
```

## Nene.CoreState:render_clear (function)
```lua
function Nene.CoreState:render_clear(color: Nene.Color)
```

## Nene.CoreState:render_draw_rect (function)
```lua
function Nene.CoreState:render_draw_rect(rect: Nene.Math.Rect, use_lines: boolean, color: Nene.Color)
```

## Nene.CoreState:get_ms_time (function)
```lua
function Nene.CoreState:get_ms_time()
```

## Nene.CoreState:get_deltatime (function)
```lua
function Nene.CoreState:get_deltatime()
```

## Nene.CoreState:render_present (function)
```lua
function Nene.CoreState:render_present()
```

## Nene.init (function)
```lua
function Nene.init(
```

## Nene.CoreState:terminate (function)
```lua
function Nene.CoreState:terminate()
```
