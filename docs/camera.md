# nene/camera.nelua
## Nene.Camera

```lua
global Nene.Camera = @record{
  offset: Nene.Math.Vec2, -- should be on ([0, 1], [0, 1]) range
  pos: Nene.Math.Vec2,
}
local Camera = Nene.Camera
## Camera.value.is_camera = true
```

## Camera:set_offset
sets the offset vector of camera, it's {0.5, 0.5} by default, which 
means that the objects will look 
offset is how the camera centers on the screen, you probably want
```lua
function Camera:set_offset(offset: Nene.Math.Vec2)
```

## Camera:get_relative_pos

```lua
function Camera:get_relative_pos(pos: Nene.Math.Vec2, screen_size: Nene.Math.Vec2): Nene.Math.Vec2
```

## Camera.new

```lua
function Camera.new(pos: facultative(Nene.Math.Vec2)): Camera
```
