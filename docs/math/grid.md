### Summary
* [Grid](#grid)
* [Grid.get_rect](#gridget_rect)
* [Grid.get_nth_cell_column_row](#gridget_nth_cell_column_row)
* [Grid.get_cell_pos](#gridget_cell_pos)
* [Grid.get_nth_cell_pos](#gridget_nth_cell_pos)

## grid

The grid module, used as a way to use grids mathematically.

### Grid

```lua
local Grid = @record{
  cell_size: Vec2i, -- size of the rectangles
  gap: Vec2i -- gap between rectagles
}
```

This record is intended to generate rectangles from an infinite grid.

### Grid.get_rect

```lua
function Grid.get_rect(grid: Grid, column: integer, row: integer): Rect
```

Generates the rectangle of a cell from the grid mathematically.

> Both `column` and `row` starts from 0.

### Grid.get_nth_cell_column_row

```lua
function Grid.get_nth_cell_column_row(n: isize, width: isize): (isize, isize)
```

Returns the the column and row of the `n`th cell of a grid with `width` cells per line.

> `n` starts by `0` (the 1st cell would be `n = 0`, the 2nd cell would be `n = 1`, and so on).

For example, let's say you want to know the column and row of the 8th cell (`n=7`)
of a grid with a `width` of 5 cells:
```lua
-- The grid, the highlighted cell is the 8th cell:
--
--  colums →     0   1   2   3   4
--             ┌───┬───┬───┬───┬───┐
--    rows ↓ 0 │ 0 │ 1 │ 2 │ 3 │ 4 │
--             ├───┼───╬═══╬───┼───┤
--           1 │ 5 │ 6 ║ 7 ║ 8 │ 9 │
--             └───┴───╩═══╩───┴───┘

-- here we get the column and row of the 8th cell (that is, `n=7`)
local column, row = Grid.get_nth_cell_column_row(7, 5)
print(column, row) -- outputs '2       1'
```

### Grid.get_cell_pos

```lua
function Grid.get_cell_pos(grid: Grid, column: isize, row: isize): Vec2i
```

Returns the position of a certain cell localized on at a certain `column` and `row`.

> Both `column` and `row` starts from 0.

For example, let's say you want to know the position of the cell
at the 3rd column and 2nd row (that is, `column=2` and `row=1`) of a grid that have
a `width` of 5 cells, with 32x32 size:

```lua
-- The grid:
--
-- columns →      0     1     2     3     4
--             0px   32px  64px  96px  128px
--             ├─────┼─────┼─────┼─────┼─────┬ 0px
--    rows ↓ 0 │  0  │  1  │  2  │  3  │  4  │
--             ├─────┼─────@═════╬─────┼─────┼ 32px
--           1 │  5  │  6  ║  7  ║  8  │  9  │
--             └─────┴─────╩═════╩─────┴─────┴ 64px

-- let's create the above grid:
local my_grid: Grid = {
  cell_size = { 32, 32 } -- the size of each cell
}

-- finally, get the position of the cell relative to the grid origin
-- (represented as `@` on the (ascii) grid above which is {64, 32}).
local cell_pos = my_grid:get_cell_pos(2, 1)
print(cell_pos.x, cell_pos.y) -- outputs '64       32'

-- Note: This function takes `gap` in consideration.
```

Related Nene documentation:
* [Vec2i](vec2i.md#vec2i)

### Grid.get_nth_cell_pos

```lua
function Grid.get_nth_cell_pos(grid: Grid, n: isize, width: isize): Vec2i
```

Returns the (local) position of the `n`th cell of a grid with `width` cells per line.

> `n` starts by `0` (the 1st cell would be `n = 0`, the 2nd cell would be `n = 1`, and so on).

See `Grid.get_cell_pos` and `Grid.get_nth_cell_column_row` to read more details.

Related Nene documentation:
* [Grid.get_cell_pos](#gridget_cell_pos)
* [Grid.get_nth_cell_column_row](#gridget_nth_cell_column_row)
* [Vec2i](vec2i.md#vec2i)

---
