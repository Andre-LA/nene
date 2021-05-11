# nene/audio.nelua
## Nene.Sound

```lua
global Nene.Sound = @record{
  _data: *Mix_Chunk,
  channel: integer, -- -1 when no channel is being used
}
```

## Nene.Sound:play
plays the sound. 
* if `true` is passed on `loop` argument, the sound will loop forever; 
* if an `integer` is passed, the sound will loop `loop` times 
* if `nil` is passed, it will play one time, but it will not loop. 
 
Related SDL_mixer documentation: 
* [Mix_PlayChannel](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_28.html#SEC28) 
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)
```lua
function Nene.Sound:play(loop: overload(boolean, integer, niltype))
```

## Nene.Sound:stop
stops the sound 
 
Related SDL_mixer documentation: 
* [Mix_HaltChannel](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_34.html#SEC34) 
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)
```lua
function Nene.Sound:stop()
```

## Nene.Sound:destroy
Destroy the sound, it will first stop it and then free the sound's memory. 
 
Related SDL_mixer documentation: 
* [Mix_FreeChunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_24.html#SEC24) 
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)
```lua
function Nene.Sound:destroy()
```

## Nene.Music

```lua
global Nene.Music = @record{
  _data: *Mix_Music,
  id: usize,
}
```

## Nene.Music:free

```lua
function Nene.Music:free()
```
