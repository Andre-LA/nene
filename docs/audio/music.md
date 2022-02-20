### Summary
* [Music](#music)
* [Music:get_raw](#musicget_raw)
* [Music.load](#musicload)
* [Music:play](#musicplay)
* [Music.stop](#musicstop)
* [Music:destroy](#musicdestroy)
* [Music:__close](#music__close)

### Music

```lua
local Music = @record{
  _data: *Mix_Music,
}
```

Wraps a (SDL_mixer) music

### Music:get_raw

```lua
function Music:get_raw(): *Mix_Music
```

Returns the `pointer(Mix_Music)` internal data.

It also [`check`](https://nelua.io/libraries/#check)s if the internal data is `nilptr`.

Related SDL_mixer documentation:
* [Mix_Music](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_86.html#SEC86)

### Music.load

```lua
function Music.load(filename: string): (boolean, Music)
```

Load music file.

Related SDL_mixer documentation:
* [Mix_Music](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_86.html#SEC86)
* [Mix_LoadMUS](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_55.html)

### Music:play

```lua
function Music:play(loops: facultative(integer))
```

Plays the music (forever by default), note that this stops any playing music.

You can also pass a `loop` argument, this makes the music loop `loop` times, also note that:
* Passing `0` will make it play the music `0` times.
* Passing `1` will make it only once.
* Passing `-1` will make it looping forever, this is the default value.

Related SDL_mixer documentation:
* [Mix_PlayMusic](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_57.html)

### Music.stop

```lua
function Music.stop()
```

Stops any playing music.

Related SDL_mixer documentation:
* [Mix_HaltMusic](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_67.html)

### Music:destroy

```lua
function Music:destroy()
```

Destroy the music and resets to zeroed state.

> Note: SDL_mixer first halts (stops) the music if it's playing, it also wait if it's still fading out.

Related SDL_mixer documentation:
* [Mix_FreeMusic](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_56.html)

### Music:__close

```lua
function Music:__close()
```

Effectively the same as `destroy`, called when a to-be-closed variable goes out of scope.

---
