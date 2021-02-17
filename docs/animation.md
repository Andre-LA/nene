# nene/core_state.nelua
## Nene.AnimationRange (record)
```lua
global Nene.AnimationRange = @record{
  name: stringview,
  fps: number,
  from: usize,
  to: usize,
}
```

## Nene.AnimationRange.__eq (function)
```lua
function Nene.AnimationRange.__eq(l: Nene.AnimationRange, r: Nene.AnimationRange): boolean
```
