### Summary
* [Sound](#sound)
* [Sound:get_raw](#soundget_raw)
* [Sound.load](#soundload)
* [Sound:play](#soundplay)
* [Sound:stop](#soundstop)
* [Sound:destroy](#sounddestroy)
* [Sound:__close](#sound__close)

## sound

The Sound module, used mainly for sound effects, but it can be used for any kind of sound in general.

> Note: For music, you should look for the [`Music` module](music.md).

### Sound

```lua
local Sound = @record{
  _data: *Mix_Chunk, -- internal data, don't use it directly, use methods instead
  channel: integer, -- -1 when no channel is being used
}
```

Wraps a (SDL_mixer) sound associated with a sound channel

### Sound:get_raw

```lua
function Sound:get_raw(): *Mix_Chunk
```

Returns the `pointer(Mix_Chunk)` internal data.

It also [`check`](https://nelua.io/libraries/#check)s if the internal data is `nilptr`.

Related SDL_mixer documentation:
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)

### Sound.load

```lua
function Sound.load(filename: string): (boolean, Sound)
```

try to load a sound from a file.

Returns an `ok` status with `true` value and an sound if successful.

Related SDL_mixer documentation:
* [Mix_LoadWAV](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_19.html)

### Sound:play

```lua
function Sound:play(loop: overload(boolean, integer, niltype)): (boolean)
```

plays the loaded sound.
* if `true` is passed on `loop` argument, the sound will loop forever;
* if an `integer` is passed, the sound will loop `loop` times
* if `nil` is passed, it will play only one time.

When there is no sound loaded (that is, the internal data is `nilptr`), then this method
does nothing, though it also `check`s if the internal is `nilptr` (unless the `nochecks` pragma is enabled)

Returns an `ok` status with `true` value if successful.

Related SDL_mixer documentation:
* [Mix_PlayChannel](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_28.html)

### Sound:stop

```lua
function Sound:stop()
```

Halts (stop, interrupt) the sound.

Related SDL_mixer documentation:
* [Mix_HaltChannel](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_34.html)

### Sound:destroy

```lua
function Sound:destroy()
```

Destroy the sound and resets to zeroed state,

> Note: It will first stop the sound and then free the sound's memory.

Related SDL_mixer documentation:
* [Mix_FreeChunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_24.html)

### Sound:__close

```lua
function Sound:__close()
```

Effectively the same as `destroy`, called when a to-be-closed variable goes out of scope.

---
