# nene/texture.nelua
## Nene.Texture (record)
just a wrap of SDL_Texture, the `_data` field  
should never be directly accessed, instead, use  
the methods, which do checks
```lua
global Nene.Texture = @record{
  _data: *SDL_Texture,
  width: uinteger,
  height: uinteger,
  initialized: boolean,
}
```

## Nene.Texture:get (function)
get the internal data
```lua
function Nene.Texture:get(): *SDL_Texture
```

## Nene.Texture:free (function)
free the internal data
```lua
function Nene.Texture:free()
```

## Nene.Texture:draw (function)
draw the texture with the `color` tint at the `destination` (which can be a position, a rectangle, or `nil` which will draw at the whole screen),  
you can optionally pass the `source` rectangle if you want to draw a slice of the texture.  
However, you need pass a `CoreState` since it requires an initialized SDL to work.
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
