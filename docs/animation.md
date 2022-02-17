### Summary
* [AnimationRange](#animationrange)
* [AnimationRange.__eq](#animationrange__eq)

## animation

Animation range type, used on Spritesheets

### AnimationRange

```lua
local AnimationRange = @record{
  fps: number,   -- frames per second of this animation
  from: usize,   -- first frame
  to: usize,     -- last frame
  loop: boolean, -- should animation loop?
}
```

Animation range type, used on Spritesheets

### AnimationRange.__eq

```lua
function AnimationRange.__eq(l: AnimationRange, r: AnimationRange): boolean
```

checks equality between animation ranges

---
