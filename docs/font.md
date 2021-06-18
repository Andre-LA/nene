# nene/font.nelua
## Nene.Font
```lua
global Nene.Font = @record{
  _data: *TTF_Font,
}
```
Wraps a reference to a font

---

## Nene.Font.load
```lua
function Nene.Font.load(filename: string, ptsize: cint): (Nene.Font, boolean)
```


---

## Nene.Font:get
```lua
function Nene.Font:get(): *TTF_Font
```


---

## Nene.Font:destroy
```lua
function Nene.Font:destroy()
```


---
