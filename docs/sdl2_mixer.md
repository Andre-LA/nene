# nene/sdl2_mixer.nelua
## Mix_Linked_Version
```lua
global function Mix_Linked_Version(): *SDL_version <cimport, nodecl> end
```


## Mix_Init
```lua
global function Mix_Init(flags: cint): cint <cimport, nodecl> end
```


## Mix_Quit
```lua
global function Mix_Quit() <cimport, nodecl> end
```


## Mix_OpenAudio
```lua
global Mix_Chunk: type <cimport, nodecl> = @record{
  allocated: cint,
  abuf: *uint8,
  alen: uint32,
  volume: uint8
}
global Mix_Fading: type <cimport, nodecl, using> = @enum(cint){
  MIX_NO_FADING = 0,
  MIX_FADING_OUT = 1,
  MIX_FADING_IN = 2
}
global Mix_MusicType: type <cimport, nodecl, using> = @enum(cint){
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
global Mix_Music: type <cimport, nodecl, forwarddecl> = @record{}
global function Mix_OpenAudio(frequency: cint, format: uint16, channels: cint, chunksize: cint): cint <cimport, nodecl> end
```


## Mix_OpenAudioDevice
```lua
global function Mix_OpenAudioDevice(frequency: cint, format: uint16, channels: cint, chunksize: cint, device: cstring, allowed_changes: cint): cint <cimport, nodecl> end
```


## Mix_AllocateChannels
```lua
global function Mix_AllocateChannels(numchans: cint): cint <cimport, nodecl> end
```


## Mix_QuerySpec
```lua
global function Mix_QuerySpec(frequency: *cint, format: *uint16, channels: *cint): cint <cimport, nodecl> end
```


## Mix_LoadWAV_RW
```lua
global function Mix_LoadWAV_RW(src: *SDL_RWops, freesrc: cint): *Mix_Chunk <cimport, nodecl> end
```


## Mix_LoadMUS
```lua
global function Mix_LoadMUS(file: cstring): *Mix_Music <cimport, nodecl> end
```


## Mix_LoadMUS_RW
```lua
global function Mix_LoadMUS_RW(src: *SDL_RWops, freesrc: cint): *Mix_Music <cimport, nodecl> end
```


## Mix_LoadMUSType_RW
```lua
global function Mix_LoadMUSType_RW(src: *SDL_RWops, type: Mix_MusicType, freesrc: cint): *Mix_Music <cimport, nodecl> end
```


## Mix_QuickLoad_WAV
```lua
global function Mix_QuickLoad_WAV(mem: *uint8): *Mix_Chunk <cimport, nodecl> end
```


## Mix_QuickLoad_RAW
```lua
global function Mix_QuickLoad_RAW(mem: *uint8, len: uint32): *Mix_Chunk <cimport, nodecl> end
```


## Mix_FreeChunk
```lua
global function Mix_FreeChunk(chunk: *Mix_Chunk) <cimport, nodecl> end
```


## Mix_FreeMusic
```lua
global function Mix_FreeMusic(music: *Mix_Music) <cimport, nodecl> end
```


## Mix_GetNumChunkDecoders
```lua
global function Mix_GetNumChunkDecoders(): cint <cimport, nodecl> end
```


## Mix_GetChunkDecoder
```lua
global function Mix_GetChunkDecoder(index: cint): cstring <cimport, nodecl> end
```


## Mix_HasChunkDecoder
```lua
global function Mix_HasChunkDecoder(name: cstring): SDL_bool <cimport, nodecl> end
```


## Mix_GetNumMusicDecoders
```lua
global function Mix_GetNumMusicDecoders(): cint <cimport, nodecl> end
```


## Mix_GetMusicDecoder
```lua
global function Mix_GetMusicDecoder(index: cint): cstring <cimport, nodecl> end
```


## Mix_HasMusicDecoder
```lua
global function Mix_HasMusicDecoder(name: cstring): SDL_bool <cimport, nodecl> end
```


## Mix_GetMusicType
```lua
global function Mix_GetMusicType(music: *Mix_Music): Mix_MusicType <cimport, nodecl> end
```


## Mix_SetPostMix
```lua
global function Mix_SetPostMix(mix_func: function(pointer, *uint8, cint), arg: pointer) <cimport, nodecl> end
```


## Mix_HookMusic
```lua
global function Mix_HookMusic(mix_func: function(pointer, *uint8, cint), arg: pointer) <cimport, nodecl> end
```


## Mix_HookMusicFinished
```lua
global function Mix_HookMusicFinished(music_finished: function()) <cimport, nodecl> end
```


## Mix_GetMusicHookData
```lua
global function Mix_GetMusicHookData(): pointer <cimport, nodecl> end
```


## Mix_ChannelFinished
```lua
global function Mix_ChannelFinished(channel_finished: function(cint)) <cimport, nodecl> end
```


## Mix_RegisterEffect
```lua
global function Mix_RegisterEffect(chan: cint, f: Mix_EffectFunc_t, d: Mix_EffectDone_t, arg: pointer): cint <cimport, nodecl> end
```


## Mix_UnregisterEffect
```lua
global function Mix_UnregisterEffect(channel: cint, f: Mix_EffectFunc_t): cint <cimport, nodecl> end
```


## Mix_UnregisterAllEffects
```lua
global function Mix_UnregisterAllEffects(channel: cint): cint <cimport, nodecl> end
```


## Mix_SetPanning
```lua
global function Mix_SetPanning(channel: cint, left: uint8, right: uint8): cint <cimport, nodecl> end
```


## Mix_SetPosition
```lua
global function Mix_SetPosition(channel: cint, angle: int16, distance: uint8): cint <cimport, nodecl> end
```


## Mix_SetDistance
```lua
global function Mix_SetDistance(channel: cint, distance: uint8): cint <cimport, nodecl> end
```


## Mix_SetReverseStereo
```lua
global function Mix_SetReverseStereo(channel: cint, flip: cint): cint <cimport, nodecl> end
```


## Mix_ReserveChannels
```lua
global function Mix_ReserveChannels(num: cint): cint <cimport, nodecl> end
```


## Mix_GroupChannel
```lua
global function Mix_GroupChannel(which: cint, tag: cint): cint <cimport, nodecl> end
```


## Mix_GroupChannels
```lua
global function Mix_GroupChannels(from: cint, to: cint, tag: cint): cint <cimport, nodecl> end
```


## Mix_GroupAvailable
```lua
global function Mix_GroupAvailable(tag: cint): cint <cimport, nodecl> end
```


## Mix_GroupCount
```lua
global function Mix_GroupCount(tag: cint): cint <cimport, nodecl> end
```


## Mix_GroupOldest
```lua
global function Mix_GroupOldest(tag: cint): cint <cimport, nodecl> end
```


## Mix_GroupNewer
```lua
global function Mix_GroupNewer(tag: cint): cint <cimport, nodecl> end
```


## Mix_PlayChannelTimed
```lua
global function Mix_PlayChannelTimed(channel: cint, chunk: *Mix_Chunk, loops: cint, ticks: cint): cint <cimport, nodecl> end
```


## Mix_PlayMusic
```lua
global function Mix_PlayMusic(music: *Mix_Music, loops: cint): cint <cimport, nodecl> end
```


## Mix_FadeInMusic
```lua
global function Mix_FadeInMusic(music: *Mix_Music, loops: cint, ms: cint): cint <cimport, nodecl> end
```


## Mix_FadeInMusicPos
```lua
global function Mix_FadeInMusicPos(music: *Mix_Music, loops: cint, ms: cint, position: float64): cint <cimport, nodecl> end
```


## Mix_FadeInChannelTimed
```lua
global function Mix_FadeInChannelTimed(channel: cint, chunk: *Mix_Chunk, loops: cint, ms: cint, ticks: cint): cint <cimport, nodecl> end
```


## Mix_Volume
```lua
global function Mix_Volume(channel: cint, volume: cint): cint <cimport, nodecl> end
```


## Mix_VolumeChunk
```lua
global function Mix_VolumeChunk(chunk: *Mix_Chunk, volume: cint): cint <cimport, nodecl> end
```


## Mix_VolumeMusic
```lua
global function Mix_VolumeMusic(volume: cint): cint <cimport, nodecl> end
```


## Mix_HaltChannel
```lua
global function Mix_HaltChannel(channel: cint): cint <cimport, nodecl> end
```


## Mix_HaltGroup
```lua
global function Mix_HaltGroup(tag: cint): cint <cimport, nodecl> end
```


## Mix_HaltMusic
```lua
global function Mix_HaltMusic(): cint <cimport, nodecl> end
```


## Mix_ExpireChannel
```lua
global function Mix_ExpireChannel(channel: cint, ticks: cint): cint <cimport, nodecl> end
```


## Mix_FadeOutChannel
```lua
global function Mix_FadeOutChannel(which: cint, ms: cint): cint <cimport, nodecl> end
```


## Mix_FadeOutGroup
```lua
global function Mix_FadeOutGroup(tag: cint, ms: cint): cint <cimport, nodecl> end
```


## Mix_FadeOutMusic
```lua
global function Mix_FadeOutMusic(ms: cint): cint <cimport, nodecl> end
```


## Mix_FadingMusic
```lua
global function Mix_FadingMusic(): Mix_Fading <cimport, nodecl> end
```


## Mix_FadingChannel
```lua
global function Mix_FadingChannel(which: cint): Mix_Fading <cimport, nodecl> end
```


## Mix_Pause
```lua
global function Mix_Pause(channel: cint) <cimport, nodecl> end
```


## Mix_Resume
```lua
global function Mix_Resume(channel: cint) <cimport, nodecl> end
```


## Mix_Paused
```lua
global function Mix_Paused(channel: cint): cint <cimport, nodecl> end
```


## Mix_PauseMusic
```lua
global function Mix_PauseMusic() <cimport, nodecl> end
```


## Mix_ResumeMusic
```lua
global function Mix_ResumeMusic() <cimport, nodecl> end
```


## Mix_RewindMusic
```lua
global function Mix_RewindMusic() <cimport, nodecl> end
```


## Mix_PausedMusic
```lua
global function Mix_PausedMusic(): cint <cimport, nodecl> end
```


## Mix_SetMusicPosition
```lua
global function Mix_SetMusicPosition(position: float64): cint <cimport, nodecl> end
```


## Mix_Playing
```lua
global function Mix_Playing(channel: cint): cint <cimport, nodecl> end
```


## Mix_PlayingMusic
```lua
global function Mix_PlayingMusic(): cint <cimport, nodecl> end
```


## Mix_SetMusicCMD
```lua
global function Mix_SetMusicCMD(command: cstring): cint <cimport, nodecl> end
```


## Mix_SetSynchroValue
```lua
global function Mix_SetSynchroValue(value: cint): cint <cimport, nodecl> end
```


## Mix_GetSynchroValue
```lua
global function Mix_GetSynchroValue(): cint <cimport, nodecl> end
```


## Mix_SetSoundFonts
```lua
global function Mix_SetSoundFonts(paths: cstring): cint <cimport, nodecl> end
```


## Mix_GetSoundFonts
```lua
global function Mix_GetSoundFonts(): cstring <cimport, nodecl> end
```


## Mix_EachSoundFont
```lua
global function Mix_EachSoundFont(Function: function(cstring, pointer): cint, data: pointer): cint <cimport, nodecl> end
```


## Mix_GetChunk
```lua
global function Mix_GetChunk(channel: cint): *Mix_Chunk <cimport, nodecl> end
```


## Mix_CloseAudio
```lua
global function Mix_CloseAudio() <cimport, nodecl> end
```


## SDL_MIXER_VERSION_ATLEAST
```lua
global function SDL_MIXER_VERSION_ATLEAST(x: cint, y: cint, z: cint): SDL_bool <cimport, nodecl> end
```


## SDL_MIXER_VERSION
```lua
global function SDL_MIXER_VERSION(x: *SDL_version) <cimport, nodecl> end
```


## Mix_PlayChannel
```lua
global function Mix_PlayChannel(channel: cint, chunk: *Mix_Chunk, loops: cint): cint <cimport, nodecl> end
```


## Mix_FadeInChannel
```lua
global function Mix_FadeInChannel(channel: cint, chunk: *Mix_Chunk, loops: cint, ms: cint): cint <cimport, nodecl> end
```


## Mix_LoadWAV
```lua
global function Mix_LoadWAV(file: cstring): *Mix_Chunk <cimport, nodecl> end
```


## Mix_SetError
```lua
global function Mix_SetError(fmt: cstring, ...: cvarargs): cint <cimport, nodecl> end
```


## Mix_GetError
```lua
global function Mix_GetError(): cstring <cimport, nodecl> end
```


## Mix_ClearError
```lua
global function Mix_ClearError(): void <cimport, nodecl> end
```

