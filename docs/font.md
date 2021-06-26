### Font

```lua
global Font = @record{
  _data: *TTF_Font,
}
```

Wraps a reference to a font

### Font.load

```lua
function Font.load(filename: string, ptsize: cint): (Font, boolean)
```



### Font:get

```lua
function Font:get(): *TTF_Font
```



### Font:destroy

```lua
function Font:destroy()
```



---
