### Font

```nelua
global Font = @record{
  _data: *TTF_Font,
}
```

Wraps a reference to a font

### Font.load

```nelua
function Font.load(filename: string, ptsize: cint): (Font, boolean)
```



### Font:get

```nelua
function Font:get(): *TTF_Font
```



### Font:destroy

```nelua
function Font:destroy()
```



---
