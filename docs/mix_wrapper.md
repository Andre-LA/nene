# nene/mix_wrapper.nelua
## Nene.MixWrapper

```lua
global Nene.MixWrapper = @record{}
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
