### Summary
* [Grid](#grid)
* [Grid.gen_rect](#gridgen_rect)
* [Grid.get_nth_cell_column_row](#gridget_nth_cell_column_row)

### Grid

```lua
local Grid = @record{
  cell_size: record{ width: integer, height: integer }, -- size of the rectangles
  gap: record{ x: integer, y: integer } -- gap between rectagles
}
```

This record is intended to generate rectangles from an infinite grid.

### Grid.gen_rect

```lua
function Grid.gen_rect(grid: Grid, column: integer, row: integer): Rect
```

Generates the rectangle from the grid mathematically. Both the first `column` and `row` are `0` and not `1`.

### Grid.get_nth_cell_column_row

```lua
function Grid.get_nth_cell_column_row(n: isize, cells_per_line: isize): (isize, isize)
```

Returns the the column and row from a `n`th cell, note that this function is 0-indexed (so, the first cell is `0`, not `1`).

Is necessary to also give how many cells fit on a line.

---