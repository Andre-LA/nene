### Summary
* [Vec2](#vec2)
* [Vec2.zero](#vec2zero)
* [Vec2.one](#vec2one)
* [Vec2.__eq](#vec2__eq)
* [Vec2.__add](#vec2__add)
* [Vec2.__sub](#vec2__sub)
* [Vec2.__mul](#vec2__mul)
* [Vec2.__unm](#vec2__unm)
* [Vec2.lerp](#vec2lerp)
* [Vec2.len_sqr](#vec2len_sqr)
* [Vec2.__len](#vec2__len)
* [Vec2.dot](#vec2dot)
* [Vec2.cross](#vec2cross)
* [Vec2.normalized](#vec2normalized)

## vec2

The `Vec2` module, it implements a 2D vector with `number` components.
> If you need `integer` components, see the `Vec2i` module.

### Vec2

```lua
local Vec2 = @record{
  x: number,
  y: number
}
```



### Vec2.zero

```lua
function Vec2.zero(): Vec2
```



### Vec2.one

```lua
function Vec2.one(): Vec2
```



### Vec2.__eq

```lua
function Vec2.__eq(a: Vec2, b: Vec2): boolean
```



### Vec2.__add

```lua
function Vec2.__add(a: Vec2, b: Vec2): Vec2
```



### Vec2.__sub

```lua
function Vec2.__sub(a: Vec2, b: Vec2): Vec2
```



### Vec2.__mul

```lua
function Vec2.__mul(a: overload(number, Vec2), b: overload(number, Vec2)): Vec2
```



### Vec2.__unm

```lua
function Vec2.__unm(v: Vec2): Vec2
```



### Vec2.lerp

```lua
function Vec2.lerp(a: Vec2, b: Vec2, t: number): Vec2
```



### Vec2.len_sqr

```lua
function Vec2.len_sqr(v: Vec2): number
```



### Vec2.__len

```lua
function Vec2.__len(v: Vec2): number
```



### Vec2.dot

```lua
function Vec2.dot(a: Vec2, b: Vec2): number
```



### Vec2.cross

```lua
function Vec2.cross(a: Vec2, b: Vec2): number
```



### Vec2.normalized

```lua
function Vec2.normalized(v: Vec2): Vec2
```



---
