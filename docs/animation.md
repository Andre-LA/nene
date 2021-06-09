# nene/animation.nelua
## Nene.AnimationRange

```lua
global Nene.AnimationRange = @record{
  name: string,
  fps: number,
  from: usize,
  to: usize,
}
```

## Nene.AnimationRange.__eq

```lua
function Nene.AnimationRange.__eq(l: Nene.AnimationRange, r: Nene.AnimationRange): boolean
```
