### Summary
* [Vec2i](#vec2i)
* [Vec2i.zero](#vec2izero)
* [Vec2i.one](#vec2ione)
* [Vec2i.to_vec2](#vec2ito_vec2)
* [Vec2i.from_vec2](#vec2ifrom_vec2)
* [Vec2i.__eq](#vec2i__eq)
* [Vec2i.__add](#vec2i__add)
* [Vec2i.__sub](#vec2i__sub)
* [Vec2i.__mul](#vec2i__mul)
* [Vec2i.__unm](#vec2i__unm)
* [Vec2i.lerp](#vec2ilerp)
* [Vec2i.len_sqr](#vec2ilen_sqr)
* [Vec2i.__len](#vec2i__len)
* [Vec2i.dot](#vec2idot)
* [Vec2i.cross](#vec2icross)
* [Vec2i.normalized](#vec2inormalized)

## vec2i

The `Vec2i` module, it implements a 2D vector with `integer` components.
> If you need `number` components, see the `Vec2` module.

> Some functions returns `Vec2` instead of `Vec2i`, since it'll inevitably
results on non-integral values.

### Vec2i

```lua
local Vec2i = @record{
  x: integer,
  y: integer
}
```



### Vec2i.zero

```lua
function Vec2i.zero(): Vec2i
```



### Vec2i.one

```lua
function Vec2i.one(): Vec2i
```



### Vec2i.to_vec2

```lua
function Vec2i.to_vec2(v: Vec2i): Vec2
```



### Vec2i.from_vec2

```lua
function Vec2i.from_vec2(v: Vec2): Vec2i
```



### Vec2i.__eq

```lua
function Vec2i.__eq(a: Vec2i, b: Vec2i): boolean
```



### Vec2i.__add

```lua
function Vec2i.__add(a: Vec2i, b: Vec2i): Vec2i
```



### Vec2i.__sub

```lua
function Vec2i.__sub(a: Vec2i, b: Vec2i): Vec2i
```



### Vec2i.__mul

```lua
function Vec2i.__mul(a: overload(integer, Vec2i), b: overload(integer, Vec2i)): Vec2i
```



### Vec2i.__unm

```lua
function Vec2i.__unm(v: Vec2i): Vec2i
```



### Vec2i.lerp

```lua
function Vec2i.lerp(a: Vec2i, b: Vec2i, t: number): Vec2
```



### Vec2i.len_sqr

```lua
function Vec2i.len_sqr(v: Vec2i): integer
```



### Vec2i.__len

```lua
function Vec2i.__len(v: Vec2i): number
```



### Vec2i.dot

```lua
function Vec2i.dot(a: Vec2i, b: Vec2i): integer
```



### Vec2i.cross

```lua
function Vec2i.cross(a: Vec2i, b: Vec2i): integer
```



### Vec2i.normalized

```lua
function Vec2i.normalized(v: Vec2i): Vec2
```



---
