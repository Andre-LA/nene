### MixWrapper

```lua
global MixWrapper = @record{}
```



### MixWrapper.mix_init

```lua
function MixWrapper.mix_init(flags: cint): (boolean, cint)
```

Wrapper of `Mix_Init`

Initialize SDL_mixer loading support.

It returns an `ok` (boolean) success status and the bitmask that `Mix_Init` returns.
The `ok` status is true when the bitmask returned by `Mix_Init` is equals to `flags` argument.

Related SDL_ttf documentation:
* [Mix_Init](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_9.html)

### MixWrapper.mix_quit

```lua
function MixWrapper.mix_quit()
```

Wrapper of `Mix_Quit`

Shutdown and cleanup SDL_mixer loading support.
This function will call `Mix_Quit` _n_ times until `Mix_Init(0)` returns non-zero.

Related SDL documentation:
* [Mix_Quit](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_10.html)

### MixWrapper.load_wav

```lua
function MixWrapper.load_wav(file: cstring): (*Mix_Chunk, boolean)
```

Wrapper of `Mix_LoadWAV`

Load a file at `file` to use as a sample.

Related SDL_mixer documentation:
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)
* [Mix_LoadWAV](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_19.html)

### MixWrapper.open_audio

```lua
function MixWrapper.open_audio(frequency: cint, format: uint16, channels: cint, chunksize: cint): boolean
```

Wrapper of `Mix_OpenAudio`

Initialize SDL_mixer library.

Related SDL_ttf documentation:
* [Mix_OpenAudio](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_11.html)

### MixWrapper.close_audio

```lua
function MixWrapper.close_audio()
```

Wrapper of `Mix_CloseAudio`

Shutdown and cleanup SDL_mixer library.

Related SDL documentation:
* [Mix_CloseAudio](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_12.html)

### MixWrapper.play_channel

```lua
function MixWrapper.play_channel(channel: cint, chunk: *Mix_Chunk, loop: cint): (cint, boolean)
```

Wrapper of `Mix_PlayChannel`

Play a `chunk` on a `channel` (when `-1`, it will use the first free channel)
It will play `loop` + 1 times (pass `-1` to loop infinitely).

Related SDL_mixer documentation:
* [Mix_PlayChannel](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_28.html#SEC28)
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)

### MixWrapper.halt_channel

```lua
function MixWrapper.halt_channel(channel: cint)
```

Wrapper of `Mix_HaltChannel`

Stops the playing `channel`, if `-1` is passed, then it halts all channels.

Related SDL_mixer documentation:
* [Mix_HaltChannel](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_34.html#SEC34)
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)

### MixWrapper.free_chunk

```lua
function MixWrapper.free_chunk(chunk: *Mix_Chunk)
```

Wrapper of `Mix_FreeChunk`

Stops the playing `channel`, if `-1` is passed, then it halts all channels.

Related SDL_mixer documentation:
* [Mix_FreeChunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_24.html#SEC24)
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)

### MixWrapper.free_music

```lua
function MixWrapper.free_music(music: *Mix_Music)
```

Wrapper of `Mix_FreeMusic`

Free the music memory.

Related SDL_mixer documentation:
* [Mix_FreeMusic](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_56.html#SEC56)
* [Mix_Music](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_86.html#SEC86)

---