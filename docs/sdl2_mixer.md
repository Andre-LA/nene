### Mix_Linked_Version

```nelua
global function Mix_Linked_Version(): *SDL_version
```



### MIX_InitFlags

```nelua
global MIX_InitFlags: type = @enum(cint){
  MIX_INIT_FLAC = 1,
  MIX_INIT_MOD = 2,
  MIX_INIT_MP3 = 8,
  MIX_INIT_OGG = 16,
  MIX_INIT_MID = 32,
  MIX_INIT_OPUS = 64
}
```



### Mix_Init

```nelua
global function Mix_Init(flags: cint): cint
```



### Mix_Quit

```nelua
global function Mix_Quit()
```



### Mix_Chunk

```nelua
global Mix_Chunk: type = @record{
  allocated: cint,
  abuf: *uint8,
  alen: uint32,
  volume: uint8
}
```



### Mix_Fading

```nelua
global Mix_Fading: type = @enum(cint){
  MIX_NO_FADING = 0,
  MIX_FADING_OUT = 1,
  MIX_FADING_IN = 2
}
```



### Mix_MusicType

```nelua
global Mix_MusicType: type = @enum(cint){
  MUS_NONE = 0,
  MUS_CMD = 1,
  MUS_WAV = 2,
  MUS_MOD = 3,
  MUS_MID = 4,
  MUS_OGG = 5,
  MUS_MP3 = 6,
  MUS_MP3_MAD_UNUSED = 7,
  MUS_FLAC = 8,
  MUS_MODPLUG_UNUSED = 9,
  MUS_OPUS = 10
}
```



### Mix_Music

```nelua
global Mix_Music: type = @record{}
```



### Mix_OpenAudio

```nelua
global function Mix_OpenAudio(frequency: cint, format: uint16, channels: cint, chunksize: cint): cint
```



### Mix_OpenAudioDevice

```nelua
global function Mix_OpenAudioDevice(frequency: cint, format: uint16, channels: cint, chunksize: cint, device: cstring, allowed_changes: cint): cint
```



### Mix_AllocateChannels

```nelua
global function Mix_AllocateChannels(numchans: cint): cint
```



### Mix_QuerySpec

```nelua
global function Mix_QuerySpec(frequency: *cint, format: *uint16, channels: *cint): cint
```



### Mix_LoadWAV_RW

```nelua
global function Mix_LoadWAV_RW(src: *SDL_RWops, freesrc: cint): *Mix_Chunk
```



### Mix_LoadMUS

```nelua
global function Mix_LoadMUS(file: cstring): *Mix_Music
```



### Mix_LoadMUS_RW

```nelua
global function Mix_LoadMUS_RW(src: *SDL_RWops, freesrc: cint): *Mix_Music
```



### Mix_LoadMUSType_RW

```nelua
global function Mix_LoadMUSType_RW(src: *SDL_RWops, type: Mix_MusicType, freesrc: cint): *Mix_Music
```



### Mix_QuickLoad_WAV

```nelua
global function Mix_QuickLoad_WAV(mem: *uint8): *Mix_Chunk
```



### Mix_QuickLoad_RAW

```nelua
global function Mix_QuickLoad_RAW(mem: *uint8, len: uint32): *Mix_Chunk
```



### Mix_FreeChunk

```nelua
global function Mix_FreeChunk(chunk: *Mix_Chunk)
```



### Mix_FreeMusic

```nelua
global function Mix_FreeMusic(music: *Mix_Music)
```



### Mix_GetNumChunkDecoders

```nelua
global function Mix_GetNumChunkDecoders(): cint
```



### Mix_GetChunkDecoder

```nelua
global function Mix_GetChunkDecoder(index: cint): cstring
```



### Mix_HasChunkDecoder

```nelua
global function Mix_HasChunkDecoder(name: cstring): SDL_bool
```



### Mix_GetNumMusicDecoders

```nelua
global function Mix_GetNumMusicDecoders(): cint
```



### Mix_GetMusicDecoder

```nelua
global function Mix_GetMusicDecoder(index: cint): cstring
```



### Mix_HasMusicDecoder

```nelua
global function Mix_HasMusicDecoder(name: cstring): SDL_bool
```



### Mix_GetMusicType

```nelua
global function Mix_GetMusicType(music: *Mix_Music): Mix_MusicType
```



### Mix_SetPostMix

```nelua
global function Mix_SetPostMix(mix_func: function(pointer, *uint8, cint), arg: pointer)
```



### Mix_HookMusic

```nelua
global function Mix_HookMusic(mix_func: function(pointer, *uint8, cint), arg: pointer)
```



### Mix_HookMusicFinished

```nelua
global function Mix_HookMusicFinished(music_finished: function())
```



### Mix_GetMusicHookData

```nelua
global function Mix_GetMusicHookData(): pointer
```



### Mix_ChannelFinished

```nelua
global function Mix_ChannelFinished(channel_finished: function(cint))
```



### Mix_EffectFunc_t

```nelua
global Mix_EffectFunc_t: type = @function(cint, pointer, cint, pointer)
```



### Mix_EffectDone_t

```nelua
global Mix_EffectDone_t: type = @function(cint, pointer)
```



### Mix_RegisterEffect

```nelua
global function Mix_RegisterEffect(chan: cint, f: Mix_EffectFunc_t, d: Mix_EffectDone_t, arg: pointer): cint
```



### Mix_UnregisterEffect

```nelua
global function Mix_UnregisterEffect(channel: cint, f: Mix_EffectFunc_t): cint
```



### Mix_UnregisterAllEffects

```nelua
global function Mix_UnregisterAllEffects(channel: cint): cint
```



### Mix_SetPanning

```nelua
global function Mix_SetPanning(channel: cint, left: uint8, right: uint8): cint
```



### Mix_SetPosition

```nelua
global function Mix_SetPosition(channel: cint, angle: int16, distance: uint8): cint
```



### Mix_SetDistance

```nelua
global function Mix_SetDistance(channel: cint, distance: uint8): cint
```



### Mix_SetReverseStereo

```nelua
global function Mix_SetReverseStereo(channel: cint, flip: cint): cint
```



### Mix_ReserveChannels

```nelua
global function Mix_ReserveChannels(num: cint): cint
```



### Mix_GroupChannel

```nelua
global function Mix_GroupChannel(which: cint, tag: cint): cint
```



### Mix_GroupChannels

```nelua
global function Mix_GroupChannels(from: cint, to: cint, tag: cint): cint
```



### Mix_GroupAvailable

```nelua
global function Mix_GroupAvailable(tag: cint): cint
```



### Mix_GroupCount

```nelua
global function Mix_GroupCount(tag: cint): cint
```



### Mix_GroupOldest

```nelua
global function Mix_GroupOldest(tag: cint): cint
```



### Mix_GroupNewer

```nelua
global function Mix_GroupNewer(tag: cint): cint
```



### Mix_PlayChannelTimed

```nelua
global function Mix_PlayChannelTimed(channel: cint, chunk: *Mix_Chunk, loops: cint, ticks: cint): cint
```



### Mix_PlayMusic

```nelua
global function Mix_PlayMusic(music: *Mix_Music, loops: cint): cint
```



### Mix_FadeInMusic

```nelua
global function Mix_FadeInMusic(music: *Mix_Music, loops: cint, ms: cint): cint
```



### Mix_FadeInMusicPos

```nelua
global function Mix_FadeInMusicPos(music: *Mix_Music, loops: cint, ms: cint, position: float64): cint
```



### Mix_FadeInChannelTimed

```nelua
global function Mix_FadeInChannelTimed(channel: cint, chunk: *Mix_Chunk, loops: cint, ms: cint, ticks: cint): cint
```



### Mix_Volume

```nelua
global function Mix_Volume(channel: cint, volume: cint): cint
```



### Mix_VolumeChunk

```nelua
global function Mix_VolumeChunk(chunk: *Mix_Chunk, volume: cint): cint
```



### Mix_VolumeMusic

```nelua
global function Mix_VolumeMusic(volume: cint): cint
```



### Mix_HaltChannel

```nelua
global function Mix_HaltChannel(channel: cint): cint
```



### Mix_HaltGroup

```nelua
global function Mix_HaltGroup(tag: cint): cint
```



### Mix_HaltMusic

```nelua
global function Mix_HaltMusic(): cint
```



### Mix_ExpireChannel

```nelua
global function Mix_ExpireChannel(channel: cint, ticks: cint): cint
```



### Mix_FadeOutChannel

```nelua
global function Mix_FadeOutChannel(which: cint, ms: cint): cint
```



### Mix_FadeOutGroup

```nelua
global function Mix_FadeOutGroup(tag: cint, ms: cint): cint
```



### Mix_FadeOutMusic

```nelua
global function Mix_FadeOutMusic(ms: cint): cint
```



### Mix_FadingMusic

```nelua
global function Mix_FadingMusic(): Mix_Fading
```



### Mix_FadingChannel

```nelua
global function Mix_FadingChannel(which: cint): Mix_Fading
```



### Mix_Pause

```nelua
global function Mix_Pause(channel: cint)
```



### Mix_Resume

```nelua
global function Mix_Resume(channel: cint)
```



### Mix_Paused

```nelua
global function Mix_Paused(channel: cint): cint
```



### Mix_PauseMusic

```nelua
global function Mix_PauseMusic()
```



### Mix_ResumeMusic

```nelua
global function Mix_ResumeMusic()
```



### Mix_RewindMusic

```nelua
global function Mix_RewindMusic()
```



### Mix_PausedMusic

```nelua
global function Mix_PausedMusic(): cint
```



### Mix_SetMusicPosition

```nelua
global function Mix_SetMusicPosition(position: float64): cint
```



### Mix_Playing

```nelua
global function Mix_Playing(channel: cint): cint
```



### Mix_PlayingMusic

```nelua
global function Mix_PlayingMusic(): cint
```



### Mix_SetMusicCMD

```nelua
global function Mix_SetMusicCMD(command: cstring): cint
```



### Mix_SetSynchroValue

```nelua
global function Mix_SetSynchroValue(value: cint): cint
```



### Mix_GetSynchroValue

```nelua
global function Mix_GetSynchroValue(): cint
```



### Mix_SetSoundFonts

```nelua
global function Mix_SetSoundFonts(paths: cstring): cint
```



### Mix_GetSoundFonts

```nelua
global function Mix_GetSoundFonts(): cstring
```



### Mix_EachSoundFont

```nelua
global function Mix_EachSoundFont(Function: function(cstring, pointer): cint, data: pointer): cint
```



### Mix_GetChunk

```nelua
global function Mix_GetChunk(channel: cint): *Mix_Chunk
```



### Mix_CloseAudio

```nelua
global function Mix_CloseAudio()
```



### SDL_MIXER_MAJOR_VERSION

```nelua
global SDL_MIXER_MAJOR_VERSION: cint
```



### SDL_MIXER_MINOR_VERSION

```nelua
global SDL_MIXER_MINOR_VERSION: cint
```



### SDL_MIXER_PATCHLEVEL

```nelua
global SDL_MIXER_PATCHLEVEL: cint
```



### SDL_MIXER_COMPILEDVERSION

```nelua
global SDL_MIXER_COMPILEDVERSION: cint
```



### MIX_CHANNELS

```nelua
global MIX_CHANNELS: cint
```



### MIX_DEFAULT_FREQUENCY

```nelua
global MIX_DEFAULT_FREQUENCY: cint
```



### MIX_DEFAULT_FORMAT

```nelua
global MIX_DEFAULT_FORMAT: cint
```



### MIX_DEFAULT_CHANNELS

```nelua
global MIX_DEFAULT_CHANNELS: cint
```



### MIX_MAX_VOLUME

```nelua
global MIX_MAX_VOLUME: cint
```



### MIX_CHANNEL_POST

```nelua
global MIX_CHANNEL_POST: cint
```



### MIX_EFFECTSMAXSPEED

```nelua
global MIX_EFFECTSMAXSPEED: cstring
```



### SDL_MIXER_VERSION_ATLEAST

```nelua
global function SDL_MIXER_VERSION_ATLEAST(x: cint, y: cint, z: cint): SDL_bool
```



### SDL_MIXER_VERSION

```nelua
global function SDL_MIXER_VERSION(x: *SDL_version)
```



### Mix_PlayChannel

```nelua
global function Mix_PlayChannel(channel: cint, chunk: *Mix_Chunk, loops: cint): cint
```



### Mix_FadeInChannel

```nelua
global function Mix_FadeInChannel(channel: cint, chunk: *Mix_Chunk, loops: cint, ms: cint): cint
```



### Mix_LoadWAV

```nelua
global function Mix_LoadWAV(file: cstring): *Mix_Chunk
```



### Mix_SetError

```nelua
global function Mix_SetError(fmt: cstring, ...: cvarargs): cint
```



### Mix_GetError

```nelua
global function Mix_GetError(): cstring
```



### Mix_ClearError

```nelua
global function Mix_ClearError(): void
```



---
