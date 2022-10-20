### Summary
* [gamepad](#gamepad)
* [gamepad.Button](#gamepadbutton)
* [gamepad.Axis](#gamepadaxis)

## gamepad

The gamepad module.

### gamepad

```lua
local gamepad = @record{}
```



### gamepad.Button

```lua
local gamepad.Button = @enum(cint) {
  -- Face buttons (the buttons of the right-side of a gamepad, or "B, X, A, Circle, etc." on some controllers)
  FaceButtonDown  = SDL_CONTROLLER_BUTTON_A,
  FaceButtonRight = SDL_CONTROLLER_BUTTON_B,
  FaceButtonLeft  = SDL_CONTROLLER_BUTTON_X,
  FaceButtonUp    = SDL_CONTROLLER_BUTTON_Y,

  -- Middle buttons (the buttons at the middle of a gamepad, "Start, Back, Select, etc." on some controllers)
  MiddleButtonLeft   = SDL_CONTROLLER_BUTTON_BACK,
  MiddleButtonCenter = SDL_CONTROLLER_BUTTON_GUIDE,
  MiddleButtonRight  = SDL_CONTROLLER_BUTTON_START,

  -- Thumbstick buttons ("L3, R3, LS, RS" on some controllers)
  LeftStick  = SDL_CONTROLLER_BUTTON_LEFTSTICK,
  RightStick = SDL_CONTROLLER_BUTTON_RIGHTSTICK,

  -- Shoulder buttons ("L, R, L1, R1, LB, RB" on some controllers)
  LeftShoulder  = SDL_CONTROLLER_BUTTON_LEFTSHOULDER,
  RightShoulder = SDL_CONTROLLER_BUTTON_RIGHTSHOULDER,

  -- Digital Pads (the "arrows" on controllers, on the left-side)
  DPadUp    = SDL_CONTROLLER_BUTTON_DPAD_UP,
  DPadDown  = SDL_CONTROLLER_BUTTON_DPAD_DOWN,
  DPadLeft  = SDL_CONTROLLER_BUTTON_DPAD_LEFT,
  DPadRight = SDL_CONTROLLER_BUTTON_DPAD_RIGHT,

  -- Et cetera
  Misc1    = SDL_CONTROLLER_BUTTON_MISC1,
  Paddle1  = SDL_CONTROLLER_BUTTON_PADDLE1,
  Paddle2  = SDL_CONTROLLER_BUTTON_PADDLE2,
  Paddle3  = SDL_CONTROLLER_BUTTON_PADDLE3,
  Paddle4  = SDL_CONTROLLER_BUTTON_PADDLE4,
  Touchpad = SDL_CONTROLLER_BUTTON_TOUCHPAD,
}
```

Buttons of an gamepad, it copies the values of SDL's buttons enumeration, although it renames some of the
nomenclature.

-- Related SDL documentation:
* [SDL_GameControllerButton](https://wiki.libsdl.org/SDL_GameControllerButton)

### gamepad.Axis

```lua
local gamepad.Axis = @enum(cint) {
  -- Left stick X and Y axis
  LeftX = SDL_CONTROLLER_AXIS_LEFTX,
  LeftY = SDL_CONTROLLER_AXIS_LEFTY,

  -- Right stick X and Y axis
  RightX = SDL_CONTROLLER_AXIS_RIGHTX,
  RightY = SDL_CONTROLLER_AXIS_RIGHTY,

  -- Triggers ("ZL, ZR, L2, R2, LT, RT" on some controllers)
  LeftTrigger  = SDL_CONTROLLER_AXIS_TRIGGERLEFT,
  RightTrigger = SDL_CONTROLLER_AXIS_TRIGGERRIGHT,
}
```

Axes of an gamepad, it copies the values of SDL's axes enumeration, although it renames some of the
nomenclature.

-- Related SDL documentation:
* [SDL_GameControllerAxis](https://wiki.libsdl.org/SDL_GameControllerAxis)
* [SDL_GameControllerGetAxis](https://wiki.libsdl.org/SDL_GameControllerGetAxis)

---