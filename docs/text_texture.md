# nene/text_texture.nelua
## Nene.TextTexture (record)

```lua
global Nene.TextTexture = @record{
  texture: Nene.Texture,
  text: stringview,
}
```

## Nene.TextTexture:update_text (function)

```lua
function Nene.TextTexture:update_text(nene_state: Nene.CoreState, text: stringview, color: Nene.Color, font: Nene.Font)
```

## Nene.TextTexture:draw (function)

```lua
function Nene.TextTexture:draw(nene_state: Nene.CoreState, pos: Nene.Math.Vec2, color: Nene.Color)
```

## Nene.TextTexture.new (function)

```lua
function Nene.TextTexture.new(nene_state: Nene.CoreState, initial_text: stringview, color: Nene.Color, font: Nene.Font): Nene.TextTexture
```
