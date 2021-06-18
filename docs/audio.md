# nene/audio.nelua
## Nene.Sound
```lua
global Nene.Sound = @record{
  _data: *Mix_Chunk,
  channel: integer, -- -1 when no channel is being used
}
```
Holds a sound associated with a sound channel

## Sound:get
```lua
function Sound:get(): *Mix_Chunk
```
returns internal data, it checks if internal data is `nilptr`. 
 
Related SDL_mixer documentation: 
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)

## Sound.load
```lua
function Sound.load(filename: string): (Nene.Sound, boolean)
```
try to load a sound from a file. 
 
it returns: 
* `Nene.Sound` value, with internal data properly initialized if load is successful 
* a boolean which is `true` when the load succeeds. 
 
Related SDL_mixer documentation: 
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85) 
* [Mix_LoadWAV](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_19.html)

## Nene.Sound:play
```lua
function Nene.Sound:play(loop: overload(boolean, integer, niltype))
```
plays the loaded sound. 
* if `true` is passed on `loop` argument, the sound will loop forever; 
* if an `integer` is passed, the sound will loop `loop` times 
* if `nil` is passed, it will play only one time. 
 
When there is no sound loaded (that is, the internal data is `nilptr`), then this method 
does nothing, though it also `check`s if the internal is `nilptr` (unless the `nochecks` pragma is enabled) 
 
Related SDL_mixer documentation: 
* [Mix_PlayChannel](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_28.html#SEC28) 
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)

## Nene.Sound:stop
```lua
function Nene.Sound:stop()
```
stops the sound. 
 
Related SDL_mixer documentation: 
* [Mix_HaltChannel](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_34.html#SEC34) 
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)

## Nene.Sound:destroy
```lua
function Nene.Sound:destroy()
```
Destroy the sound, it will first stop it and then free the sound's memory. 
 
Related SDL_mixer documentation: 
* [Mix_FreeChunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_24.html#SEC24) 
* [Mix_Chunk](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_85.html#SEC85)

## Nene.Music
```lua
global Nene.Music = @record{
  _data: *Mix_Music,
  id: usize,
}
```


## Music:get
```lua
function Music:get(): *Mix_Music
```
returns internal data, it checks if internal data is `nilptr`. 
 
Related SDL_mixer documentation: 
* [Mix_Music](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_86.html#SEC86)

## Nene.Music:destroy
```lua
function Nene.Music:destroy()
```
Destroy the music, it will halts it if playing, it also wait if it's still fading out. 
 
Related SDL_mixer documentation: 
* [Mix_FreeMusic](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_56.html#SEC56) 
* [Mix_Music](https://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer_86.html#SEC86)
