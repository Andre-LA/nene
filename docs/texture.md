# nene/texture.nelua
## Nene.Texture (record)

```lua
global Nene.Texture = @record{
  _data: *SDL_Texture,
  width: uinteger,
  height: uinteger,
  initialized: boolean,
}
```

## Nene.Texture:get (function)

```lua
function Nene.Texture:get(): *SDL_Texture
```

## Nene.Texture:free (function)

```lua
function Nene.Texture:free()
```

## Nene.Texture:draw (function)

```lua
function Nene.Texture:draw(nene_state: Nene.CoreState, color: Nene.Color, source: facultative(Nene.Math.Rect), destination: overload(Nene.Math.Vec2, Nene.Math.Rect, niltype))
```

## Nene.Texture:apply_sdltex (function)

```lua
function Nene.Texture:apply_sdltex(new_tex: *SDL_Texture)
```

## Nene.Texture.new (function)

```lua
function Nene.Texture.new(new_tex: *SDL_Texture): Nene.Texture
```
