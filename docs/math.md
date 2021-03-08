# nene/math.nelua
## Nene.Math (record)

```lua
global Nene.Math = @record{}
```

## Nene.Math.Vec2 (record)

```lua
global Nene.Math.Vec2 = @record{
  x: number,
  y: number
}
```

## Vec2.__eq (function)

```lua
function Vec2.__eq(l: Vec2, r: Vec2): boolean
```

## Vec2.__len (function)

```lua
function Vec2.__len(v: Vec2): number
```

## Vec2.__add (function)

```lua
function Vec2.__add(l: Vec2, r: Vec2): Vec2
```

## Vec2.__sub (function)

```lua
function Vec2.__sub(l: Vec2, r: Vec2): Vec2
```

## Vec2.__mul (function)

```lua
function Vec2.__mul(l: Vec2, r: overload(Vec2, number)): Vec2
```

## Vec2.__div (function)

```lua
function Vec2.__div(l: Vec2, r: Vec2): Vec2
```

## Vec2.__unm (function)

```lua
function Vec2.__unm(v: Vec2): Vec2
```

## Vec2.dot (function)

```lua
function Vec2.dot(l: Vec2, r: Vec2): number
```

## Vec2.normalized (function)

```lua
function Vec2.normalized(v: Vec2): Vec2
```

## Nene.Math.#|name|# (record)

```lua
  global Nene.Math.#|name|# = @record{
    x: T,
    y: T,
    w: T,
    h: T
  }
  local RectT = Nene.Math.#|name|#
```

## RectT:get_intersection (function)

```lua
  function RectT:get_intersection(other_rect: RectT): RectT
```

## RectT:is_point_intersecting (function)

```lua
  function RectT:is_point_intersecting(point: Nene.Math.Vec2): boolean
```

## RectT:is_rect_intersecting (function)

```lua
  function RectT:is_rect_intersecting(other: RectT): boolean
```

## RectT:get_center (function)

```lua
  function RectT:get_center(): Nene.Math.Vec2
```

## Nene.Math.Rectf:to_rect (function)

```lua
function Nene.Math.Rectf:to_rect(): Nene.Math.Rect
```

## Nene.Math.Rect:to_rectf (function)

```lua
function Nene.Math.Rect:to_rectf(): Nene.Math.Rectf
```
