### Summary
* [Math](#math)
* [Math.Vec2](#mathvec2)
* [Math.Vec2.__eq](#mathvec2__eq)
* [Math.Vec2.__add](#mathvec2__add)
* [Math.Vec2.__sub](#mathvec2__sub)
* [Math.Vec2.__mul](#mathvec2__mul)
* [Math.Vec2.__div](#mathvec2__div)
* [Math.Vec2.__unm](#mathvec2__unm)
* [Math.Vec2.lerp](#mathvec2lerp)
* [Math.Vec2.len_sqr](#mathvec2len_sqr)
* [Math.Vec2.__len](#mathvec2__len)
* [Math.Vec2.dot](#mathvec2dot)
* [Math.Vec2.normalized](#mathvec2normalized)
* [Math.](#math)
* [Math.Grid](#mathgrid)
* [Math.Grid.gen_rect](#mathgridgen_rect)
* [Math.Grid.get_nth_cell_column_row](#mathgridget_nth_cell_column_row)

### Math

```lua
global Math = @record{}
```



### Math.Vec2

```lua
global Math.Vec2 = @record{
  x: number,
  y: number
}
```



### Math.Vec2.__eq

```lua
function Math.Vec2.__eq(a: Vec2, b: Vec2): boolean
```



### Math.Vec2.__add

```lua
function Math.Vec2.__add(a: Vec2, b: Vec2): Vec2
```



### Math.Vec2.__sub

```lua
function Math.Vec2.__sub(a: Vec2, b: Vec2): Vec2
```



### Math.Vec2.__mul

```lua
function Math.Vec2.__mul(a: overload(Vec2, number), b: overload(Vec2, number)): Vec2
```



### Math.Vec2.__div

```lua
function Math.Vec2.__div(a: Vec2, b: Vec2): Vec2
```



### Math.Vec2.__unm

```lua
function Math.Vec2.__unm(v: Vec2): Vec2
```



### Math.Vec2.lerp

```lua
function Math.Vec2.lerp(a: Vec2, b: Vec2, t: number): Vec2
```



### Math.Vec2.len_sqr

```lua
function Math.Vec2.len_sqr(v: Vec2): number
```



### Math.Vec2.__len

```lua
function Math.Vec2.__len(v: Vec2): number
```



### Math.Vec2.dot

```lua
function Math.Vec2.dot(a: Vec2, b: Vec2): number
```



### Math.Vec2.normalized

```lua
function Math.Vec2.normalized(v: Vec2): Vec2
```



### Math.

```lua
global Math.#|name|# = @record{
    x: T,
    y: T,
    w: T,
    h: T
  }
```

Rect type, but also Rectf, note that Rectf may be removed, so don't use it while this warning is here.

### Math.Grid

```lua
global Math.Grid = @record{
  cell_size: record{ width: integer, height: integer }, -- size of the rectangles
  gap: record{ x: integer, y: integer } -- gap between rectagles
}
```

This record is intended to generate rectangles from an infinite grid.

### Math.Grid.gen_rect

```lua
function Math.Grid.gen_rect(grid: Grid, column: integer, row: integer): Math.Rect
```

Generates the rectangle from the grid mathematically. Both the first `column` and `row` are `0` and not `1`.

### Math.Grid.get_nth_cell_column_row

```lua
function Math.Grid.get_nth_cell_column_row(n: isize, cells_per_line: isize): (isize, isize)
```

Returns the the column and row from a `n`th cell, note that this function is 0-indexed (so, the first cell is `0`, not `1`).

Is necessary to also give how many cells fit on a line.

---
