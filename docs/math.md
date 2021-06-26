### Math

```nelua
global Math = @record{}
```



### Math.Vec2

```nelua
global Math.Vec2 = @record{
  x: number,
  y: number
}
```



### Math.

```nelua
global Math.#|name|# = @record{
    x: T,
    y: T,
    w: T,
    h: T
  }
```



### Math.Grid

```nelua
global Math.Grid = @record{
  rect_size: record{ width: integer, height: integer }, -- the size of the rectangles
  gap: record{ x: integer, y: integer } -- the gap between rectagles
}
```

This record is intended to generate rectangles from an infinite grid. This grid is mathematical, it doesn't really exists.

---
