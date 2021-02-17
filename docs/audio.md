# nene/audio.nelua
## Nene.Sound (record)
```lua
global Nene.Sound = @record{
  _data: *Mix_Chunk,
  channel: integer, -- -1 when no channel is being used
}
```


## Nene.Sound:play (function)
```lua
function Nene.Sound:play(loop: overload(boolean, integer, niltype))
```


## Nene.Sound:stop (function)
```lua
function Nene.Sound:stop()
```


## Nene.Sound:free (function)
```lua
function Nene.Sound:free()
```


## Nene.Sound:stop_and_free (function)
```lua
function Nene.Sound:stop_and_free()
```


## Nene.Music (record)
```lua
global Nene.Music = @record{
  _data: *Mix_Music,
  id: usize,
}
```


## Nene.Music:free (function)
```lua
function Nene.Music:free()
```

