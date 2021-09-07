### Summary
* [MixWrapper](#mixwrapper)
* [MixWrapper.mix_init](#mixwrappermix_init)
* [MixWrapper.mix_quit](#mixwrappermix_quit)
* [MixWrapper.load_wav](#mixwrapperload_wav)
* [MixWrapper.open_audio](#mixwrapperopen_audio)
* [MixWrapper.close_audio](#mixwrapperclose_audio)
* [MixWrapper.load_mus](#mixwrapperload_mus)
* [MixWrapper.play_channel](#mixwrapperplay_channel)
* [MixWrapper.halt_channel](#mixwrapperhalt_channel)
* [MixWrapper.free_chunk](#mixwrapperfree_chunk)
* [MixWrapper.free_music](#mixwrapperfree_music)
* [MixWrapper.play_music](#mixwrapperplay_music)
* [MixWrapper.halt_music](#mixwrapperhalt_music)

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
* [Mix_Quit](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_10.html)

### MixWrapper.mix_quit

```lua
function MixWrapper.mix_quit()
```

Wrapper of `Mix_Quit`

Shutdown and cleanup SDL_mixer loading support.
This function will call `Mix_Quit` _n_ times until `Mix_Init(0)` returns non-zero.

Related SDL_mixer documentation:
* [Mix_Quit](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_10.html)
* [Mix_Init](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_9.html)

### MixWrapper.load_wav

```lua
function MixWrapper.load_wav(filepath: cstring): (*Mix_Chunk, boolean)
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
* [Mix_CloseAudio](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_12.html)

### MixWrapper.close_audio

```lua
function MixWrapper.close_audio()
```

Wrapper of `Mix_CloseAudio`

Shutdown and cleanup SDL_mixer library.

Related SDL_mixer documentation:
* [Mix_CloseAudio](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_12.html)
* [Mix_OpenAudio](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_11.html)

### MixWrapper.load_mus

```lua
function MixWrapper.load_mus(filepath: cstring): (*Mix_Music, boolean)
```

Wrapper of `Mix_LoadMUS`

Load music file to use.

Related SDL_mixer documentation:
* [Mix_LoadMUS](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_55.html#SEC55)
* [Mix_Music](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_86.html#SEC86)

### MixWrapper.play_channel

```lua
function MixWrapper.play_channel(channel: cint, chunk: *Mix_Chunk, loop: cint): (cint, boolean)
```

Wrapper of `Mix_PlayChannel`

Play a `chunk` on a `channel` (when `-1`, it will use the first free channel)
It will play `loop` + 1 times (pass `-1` to loop infinitely).

Related SDL_mixer documentation:
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)
* [Mix_PlayChannel](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_28.html#SEC28)

### MixWrapper.halt_channel

```lua
function MixWrapper.halt_channel(channel: cint)
```

Wrapper of `Mix_HaltChannel`

Stops the playing `channel`, if `-1` is passed, then it halts all channels.

Related SDL_mixer documentation:
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)
* [Mix_HaltChannel](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_34.html#SEC34)

### MixWrapper.free_chunk

```lua
function MixWrapper.free_chunk(chunk: *Mix_Chunk)
```

Wrapper of `Mix_FreeChunk`

Stops the playing `channel`, if `-1` is passed, then it halts all channels.

Related SDL_mixer documentation:
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)
* [Mix_FreeChunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_24.html#SEC24)

### MixWrapper.free_music

```lua
function MixWrapper.free_music(music: *Mix_Music)
```

Wrapper of `Mix_FreeMusic`

Free the music memory, if the music it's playing then it's halted first;
if it's fading out, SDL_mixer will wait for the fade out.

Related SDL_mixer documentation:
* [Mix_Music](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_86.html#SEC86)
* [Mix_FreeMusic](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_56.html#SEC56)

### MixWrapper.play_music

```lua
function MixWrapper.play_music(music: *Mix_Music, loops: cint): boolean
```

Wrapper of `Mix_PlayMusic`

Play the `music` `loop` times, if there is another music already being played, then
this music will be halted (if it's fading out then it waits the fading).

Note that passing `0` to loop it will "play 0 times" and passing `-1` will make it loop forever.

Related SDL_mixer documentation:
* [Mix_Music](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_86.html#SEC86)
* [Mix_PlayMusic](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_57.html#SEC57)
* [Mix_HaltMusic](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_67.html#SEC67)

### MixWrapper.halt_music

```lua
function MixWrapper.halt_music()
```

Wrapper of `Mix_PlayMusic`

Halts (stops) the current playing music, it also interrupts fading effects.

Related SDL_mixer documentation:
* [Mix_Music](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_86.html#SEC86)
* [Mix_HaltMusic](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_67.html#SEC67)
* [Mix_PlayMusic](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_57.html#SEC57)

---
