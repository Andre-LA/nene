# nene/spritesheet.nelua
## Nene.SpriteSheet
```lua
global Nene.SpriteSheet = @record{
  atlas: *Nene.TextureAtlas,
  animations: vector(Nene.AnimationRange)
}
```


---

## Nene.SpriteSheet:get_named_animation_range
```lua
function Nene.SpriteSheet:get_named_animation_range(name: string): (boolean, Nene.AnimationRange)
```


---
