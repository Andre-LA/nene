### SpriteSheet

```lua
global SpriteSheet = @record{
  atlas: *Nene.TextureAtlas,
  animations: vector(Nene.AnimationRange)
}
```

a sprite sheet uses an atlas and applies it for sprites, it contains an atlas and a sequence of animations ranges.

### SpriteSheet:get_named_animation_range

```lua
function SpriteSheet:get_named_animation_range(name: string): (boolean, Nene.AnimationRange)
```

search the animation range with the respective name
when found, it returns `true` and the a copy of the respective animation range,
otherwise it returns `false` and a unitilialized animation range.

---
