### Summary
* [Rect](#rect)
* [Rect.to_raw_rect](#rectto_raw_rect)
* [Rect.__eq](#rect__eq)
* [Rect.get_position](#rectget_position)
* [Rect.get_size](#rectget_size)
* [Rect.with_position](#rectwith_position)
* [Rect.add_position](#rectadd_position)
* [Rect.with_size](#rectwith_size)
* [Rect.add_size](#rectadd_size)
* [Rect.from_vec2](#rectfrom_vec2)
* [Rect.is_intersecting](#rectis_intersecting)
* [Rect.get_intersection](#rectget_intersection)
* [Rect.get_center](#rectget_center)
* [Rect.simple_collision](#rectsimple_collision)

## rect

The `Rect` module, it implements a rectangle using `integer` components.

### Rect

```lua
local Rect = @record{
  x: integer, y: integer, -- position
  w: integer, h: integer, -- size
}
```



### Rect.to_raw_rect

```lua
function Rect.to_raw_rect(rect: Rect): SDL_Rect
```

convert this to `SDL_Rect`

### Rect.__eq

```lua
function Rect.__eq(self: Rect, other: Rect)
```

compare this rect with another rect

### Rect.get_position

```lua
function Rect.get_position(self: Rect): Vec2i
```

Get rect position

### Rect.get_size

```lua
function Rect.get_size(self: Rect): Vec2i
```

Get rect size

### Rect.with_position

```lua
function Rect.with_position(self: Rect, pos: overload(Vec2i, Vec2)): Rect
```

Returns a copy with a new position

### Rect.add_position

```lua
function Rect.add_position(self: Rect, pos: overload(Vec2i, Vec2)): Rect
```

Returns a copy with a new position summed with current position

### Rect.with_size

```lua
function Rect.with_size(self: Rect, size: overload(Vec2i, Vec2)): Rect
```

Returns a copy with a new size

### Rect.add_size

```lua
function Rect.add_size(self: Rect, size: overload(Vec2i, Vec2)): Rect
```

Returns a copy with a new size summed with current size

### Rect.from_vec2

```lua
function Rect.from_vec2(pos: overload(Vec2i, Vec2), size: overload(Vec2i, Vec2)): Rect
```

Creates a Rect from two bi-dimensional vectors

### Rect.is_intersecting

```lua
function Rect.is_intersecting(self: Rect, other: overload(Rect, Vec2i, Vec2)): boolean
```

Test if another rect or point it's intersecting the rect

### Rect.get_intersection

```lua
function Rect.get_intersection(a: Rect, b: Rect): (Rect, boolean)
```

Get an intersection rect between two rects and also if the two rects are actually intersecting.

It's not necessary to test if the two rects are intersecting before using this function, just check
the second return value for that.

### Rect.get_center

```lua
function Rect.get_center(self: Rect): Vec2
```

get the center of rectangle.

### Rect.simple_collision

```lua
function Rect.simple_collision(self: Rect, intersected: Rect): (boolean, Rect, Rect)
```

A very simple collision resolution.

It returns:
* a boolean which contains if the two rectangles were really intersecting
* a rectangle with the collision resolved
* a rectangle of the intersection between the rectangles

---
