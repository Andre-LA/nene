# nene/spritesheet.nelua
## Nene.SpriteSheet (record)
```lua
global Nene.SpriteSheet = @record{
  atlas: *Nene.TextureAtlas,
  animations: vector(Nene.AnimationRange)
}
```


## Nene.SpriteSheet:get_named_animation_range (function)
```lua
function Nene.SpriteSheet:get_named_animation_range(name: stringview): (boolean, Nene.AnimationRange)
```

