### Summary
* [Rectn](#rectn)
* [Rectn.to_raw_rect](#rectnto_raw_rect)
* [Rectn:get_position](#rectnget_position)
* [Rectn:get_size](#rectnget_size)
* [Rectn:with_position](#rectnwith_position)
* [Rectn:with_size](#rectnwith_size)
* [Rectn.from_vec2](#rectnfrom_vec2)
* [Rectn.is_intersecting](#rectnis_intersecting)
* [Rectn.get_intersection](#rectnget_intersection)
* [Rectn.get_center](#rectnget_center)
* [Rectn.simple_collision](#rectnsimple_collision)
* [Rectn](#rectn)

## rectn

The `Rectn` module, it implements a rectangle using `n` type for `x`, `y`, `w` and `h` components,
where `n` is an arithmetic type.

### Rectn

```lua
local Rectn: type = @record{
    x: T, y: T, -- position
    w: T, h: T, -- size
  }
```



### Rectn.to_raw_rect

```lua
function Rectn.to_raw_rect(rect: Rectn): SDL_Rect
```

convert this

### Rectn:get_position

```lua
function Rectn:get_position(): Vec2T
```

Get rect position

### Rectn:get_size

```lua
function Rectn:get_size(): Vec2T
```

Get rect size

### Rectn:with_position

```lua
function Rectn:with_position(pos: ov_vec2): Rectn
```

Returns a copy with a new position

### Rectn:with_size

```lua
function Rectn:with_size(size: ov_vec2): Rectn
```

Returns a copy with a new size

### Rectn.from_vec2

```lua
function Rectn.from_vec2(pos: ov_vec2, size: ov_vec2): Rectn
```

Creates a Rect from two bi-dimensional vectors

### Rectn.is_intersecting

```lua
function Rectn.is_intersecting(self: Rectn, other: overload(Rectn, ov_vec2)): boolean
```

Test if another rect or point it's intersecting the rect

### Rectn.get_intersection

```lua
function Rectn.get_intersection(a: Rectn, b: Rectn): (Rectn, boolean)
```

Get an intersection rect between two rects and also if the two rects are actually intersecting.

It's not necessary to test if the two rects are intersecting before using this function, just check
the second return value for that.

### Rectn.get_center

```lua
function Rectn.get_center(self: Rectn): Vec2T
```

get the center of rectangle.

### Rectn.simple_collision

```lua
function Rectn.simple_collision(self: Rectn, intersected: Rectn): (boolean, Rectn, Rectn)
```

A very simple collision resolution.

It returns:
* a boolean which contains if the two rectangles were really intersecting
* a rectangle with the collision resolved
* a rectangle of the intersection between the rectangles

### Rectn

```lua
local Rectn: type
```



---
