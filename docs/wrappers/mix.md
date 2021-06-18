# nene/wrappers/mix.nelua
## Nene.MixWrapper

```lua
global Nene.MixWrapper = @record{}
```

## warn_msg

```lua
local function warn_msg(fn_name, msg)
```

## Nene.MixWrapper.mix_init
Wrapper of `Mix_Init` 
 
Initialize SDL_mixer loading support. 
This function doesn't check if `Nene` is initialized. 
 
It returns an `ok` (boolean) success status and the bitmask that `Mix_Init` returns. 
The `ok` status is true when the bitmask returned by `Mix_Init` is equals to `flags` argument. 
 
Related SDL_ttf documentation: 
* [Mix_Init](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_9.html)
```lua
function Nene.MixWrapper.mix_init(flags: cint): (boolean, cint)
```

## Nene.MixWrapper.mix_quit
Wrapper of `Mix_Quit` 
 
Shutdown and cleanup SDL_mixer loading support. 
This function will call `Mix_Quit` _n_ times until `Mix_Init(0)` returns non-zero. 
 
Related SDL documentation: 
* [Mix_Quit](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_10.html)
```lua
function Nene.MixWrapper.mix_quit()
```

## Nene.MixWrapper.load_wav
Wrapper of `Mix_LoadWAV` 
 
Load a file at `file` to use as a sample. 
 
Related SDL_mixer documentation: 
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85) 
* [Mix_LoadWAV](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_19.html)
```lua
function Nene.MixWrapper.load_wav(file: cstring): (*Mix_Chunk, boolean)
```

## Nene.MixWrapper.open_audio
Wrapper of `Mix_OpenAudio` 
 
Initialize SDL_mixer library. 
This function doesn't check if `Nene` is initialized. 
 
Related SDL_ttf documentation: 
* [Mix_OpenAudio](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_11.html)
```lua
function Nene.MixWrapper.open_audio(frequency: cint, format: uint16, channels: cint, chunksize: cint): boolean
```

## Nene.MixWrapper.close_audio
Wrapper of `Mix_CloseAudio` 
 
Shutdown and cleanup SDL_mixer library. 
 
Related SDL documentation: 
* [Mix_CloseAudio](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_12.html)
```lua
function Nene.MixWrapper.close_audio()
```

## Nene.MixWrapper.play_channel
Wrapper of `Mix_PlayChannel` 
 
Play a `chunk` on a `channel` (when `-1`, it will use the first free channel) 
It will play `loop` + 1 times (pass `-1` to loop infinitely). 
 
Related SDL_mixer documentation: 
* [Mix_PlayChannel](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_28.html#SEC28) 
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)
```lua
function Nene.MixWrapper.play_channel(channel: cint, chunk: *Mix_Chunk, loop: cint): (cint, boolean)
```

## Nene.MixWrapper.halt_channel
Wrapper of `Mix_HaltChannel` 
 
Stops the playing `channel`, if `-1` is passed, then it halts all channels. 
 
Related SDL_mixer documentation: 
* [Mix_HaltChannel](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_34.html#SEC34) 
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)
```lua
function Nene.MixWrapper.halt_channel(channel: cint)
```

## Nene.MixWrapper.free_chunk
Wrapper of `Mix_FreeChunk` 
 
Stops the playing `channel`, if `-1` is passed, then it halts all channels. 
 
Related SDL_mixer documentation: 
* [Mix_FreeChunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_24.html#SEC24) 
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)
```lua
function Nene.MixWrapper.free_chunk(chunk: *Mix_Chunk)
```

## Nene.MixWrapper.free_music
Wrapper of `Mix_FreeMusic` 
 
Free the music memory. 
 
Related SDL_mixer documentation: 
* [Mix_FreeMusic](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_56.html#SEC56) 
* [Mix_Music](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_86.html#SEC86)
```lua
function Nene.MixWrapper.free_music(music: *Mix_Music)
```
