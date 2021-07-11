### Sound

```lua
global Sound = @record{
  _data: *Mix_Chunk, -- internal data, don't use it directly, use methods instead
  channel: integer, -- -1 when no channel is being used
}
```

Wraps a (SDL_mixer) sound associated with a sound channel

### Sound:get

```lua
function Sound:get(): *Mix_Chunk
```

It checks if the internal data is `nilptr` and then returns it.

Related SDL_mixer documentation:
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)

### Sound.load

```lua
function Sound.load(filename: string): (Sound, boolean)
```

try to load a sound from a file.

it returns:
* `Sound` value, with internal data properly initialized if load is successful
* a boolean which is `true` when the load succeeds.

Related MixWrapper documentation:
* [MixWrapper.load_wav](wrappers/mix.md#mixwrapperload_wav)

### Sound:play

```lua
function Sound:play(loop: overload(boolean, integer, niltype))
```

plays the loaded sound.
* if `true` is passed on `loop` argument, the sound will loop forever;
* if an `integer` is passed, the sound will loop `loop` times
* if `nil` is passed, it will play only one time.

When there is no sound loaded (that is, the internal data is `nilptr`), then this method
does nothing, though it also `check`s if the internal is `nilptr` (unless the `nochecks` pragma is enabled)

Related MixWrapper documentation:
* [MixWrapper.play_channel](wrappers/mix.md#mixwrapperplay_channel)

### Sound:stop

```lua
function Sound:stop()
```

Halts (stop, interrupt) the sound.

Related MixWrapper documentation:
* [MixWrapper.halt_channel](wrappers/mix.md#mixwrapperhalt_channel)

### Sound:destroy

```lua
function Sound:destroy()
```

Destroy the sound, it will first stop it and then free the sound's memory.

Related MixWrapper documentation:
* [MixWrapper.free_chunk](wrappers/mix.md#mixwrapperfree_chunk)

### Music

```lua
global Music = @record{
  _data: *Mix_Music,
}
```

Wraps a (SDL_mixer) music

### Music:get

```lua
function Music:get(): *Mix_Music
```

returns internal data, it checks if internal data is `nilptr`.

Related SDL_mixer documentation:
* [Mix_Music](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_86.html#SEC86)

### Music:destroy

```lua
function Music:destroy()
```

Destroy the music, it will halts it if playing, it also wait if it's still fading out.

Related MixWrapper documentation:
* [MixWrapper.free_music](wrappers/mix.md#mixwrapperfree_music)

---
