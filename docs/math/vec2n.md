### Summary
* [Vec2n](#vec2n)
* [Vec2n.__eq](#vec2n__eq)
* [Vec2n.__add](#vec2n__add)
* [Vec2n.__sub](#vec2n__sub)
* [Vec2n.__mul](#vec2n__mul)
* [Vec2n.__div](#vec2n__div)
* [Vec2n.__unm](#vec2n__unm)
* [Vec2n.lerp](#vec2nlerp)
* [Vec2n.len_sqr](#vec2nlen_sqr)
* [Vec2n.__len](#vec2n__len)
* [Vec2n.dot](#vec2ndot)
* [Vec2n.normalized](#vec2nnormalized)
* [Vec2n](#vec2n)

### Vec2n

```lua
local Vec2n = @record{
    x: T, y: T
  }
```



### Vec2n.__eq

```lua
function Vec2n.__eq(a: a_vec2, b: a_vec2): boolean
```



### Vec2n.__add

```lua
function Vec2n.__add(a: a_vec2, b: a_vec2): Vec2n
```



### Vec2n.__sub

```lua
function Vec2n.__sub(a: a_vec2, b: a_vec2): Vec2n
```



### Vec2n.__mul

```lua
function Vec2n.__mul(a: a_vec2_or_scalar, b: a_vec2_or_scalar): Vec2n
```



### Vec2n.__div

```lua
function Vec2n.__div(a: a_vec2, b: a_vec2): Vec2n
```



### Vec2n.__unm

```lua
function Vec2n.__unm(v: a_vec2): Vec2n
```



### Vec2n.lerp

```lua
function Vec2n.lerp(a: a_vec2, b: a_vec2, t: T): Vec2n
```



### Vec2n.len_sqr

```lua
function Vec2n.len_sqr(v: a_vec2): T
```



### Vec2n.__len

```lua
function Vec2n.__len(v: a_vec2): number
```



### Vec2n.dot

```lua
function Vec2n.dot(a: a_vec2, b: a_vec2): T
```



### Vec2n.normalized

```lua
function Vec2n.normalized(v: a_vec2): Vec2n
```



### Vec2n

```lua
local Vec2n: type
```



---
