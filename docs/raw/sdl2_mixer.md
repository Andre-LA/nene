### Summary
* [Mix_Linked_Version](#mix_linked_version)
* [MIX_InitFlags](#mix_initflags)
* [Mix_Init](#mix_init)
* [Mix_Quit](#mix_quit)
* [Mix_Chunk](#mix_chunk)
* [Mix_Fading](#mix_fading)
* [Mix_MusicType](#mix_musictype)
* [Mix_Music](#mix_music)
* [Mix_OpenAudio](#mix_openaudio)
* [Mix_OpenAudioDevice](#mix_openaudiodevice)
* [Mix_QuerySpec](#mix_queryspec)
* [Mix_AllocateChannels](#mix_allocatechannels)
* [Mix_LoadWAV_RW](#mix_loadwav_rw)
* [Mix_LoadWAV](#mix_loadwav)
* [Mix_LoadMUS](#mix_loadmus)
* [Mix_LoadMUS_RW](#mix_loadmus_rw)
* [Mix_LoadMUSType_RW](#mix_loadmustype_rw)
* [Mix_QuickLoad_WAV](#mix_quickload_wav)
* [Mix_QuickLoad_RAW](#mix_quickload_raw)
* [Mix_FreeChunk](#mix_freechunk)
* [Mix_FreeMusic](#mix_freemusic)
* [Mix_GetNumChunkDecoders](#mix_getnumchunkdecoders)
* [Mix_GetChunkDecoder](#mix_getchunkdecoder)
* [Mix_HasChunkDecoder](#mix_haschunkdecoder)
* [Mix_GetNumMusicDecoders](#mix_getnummusicdecoders)
* [Mix_GetMusicDecoder](#mix_getmusicdecoder)
* [Mix_HasMusicDecoder](#mix_hasmusicdecoder)
* [Mix_GetMusicType](#mix_getmusictype)
* [Mix_GetMusicTitle](#mix_getmusictitle)
* [Mix_GetMusicTitleTag](#mix_getmusictitletag)
* [Mix_GetMusicArtistTag](#mix_getmusicartisttag)
* [Mix_GetMusicAlbumTag](#mix_getmusicalbumtag)
* [Mix_GetMusicCopyrightTag](#mix_getmusiccopyrighttag)
* [Mix_SetPostMix](#mix_setpostmix)
* [Mix_HookMusic](#mix_hookmusic)
* [Mix_HookMusicFinished](#mix_hookmusicfinished)
* [Mix_GetMusicHookData](#mix_getmusichookdata)
* [Mix_ChannelFinished](#mix_channelfinished)
* [Mix_EffectFunc_t](#mix_effectfunc_t)
* [Mix_EffectDone_t](#mix_effectdone_t)
* [Mix_RegisterEffect](#mix_registereffect)
* [Mix_UnregisterEffect](#mix_unregistereffect)
* [Mix_UnregisterAllEffects](#mix_unregisteralleffects)
* [Mix_SetPanning](#mix_setpanning)
* [Mix_SetPosition](#mix_setposition)
* [Mix_SetDistance](#mix_setdistance)
* [Mix_SetReverseStereo](#mix_setreversestereo)
* [Mix_ReserveChannels](#mix_reservechannels)
* [Mix_GroupChannel](#mix_groupchannel)
* [Mix_GroupChannels](#mix_groupchannels)
* [Mix_GroupAvailable](#mix_groupavailable)
* [Mix_GroupCount](#mix_groupcount)
* [Mix_GroupOldest](#mix_groupoldest)
* [Mix_GroupNewer](#mix_groupnewer)
* [Mix_PlayChannel](#mix_playchannel)
* [Mix_PlayChannelTimed](#mix_playchanneltimed)
* [Mix_PlayMusic](#mix_playmusic)
* [Mix_FadeInMusic](#mix_fadeinmusic)
* [Mix_FadeInMusicPos](#mix_fadeinmusicpos)
* [Mix_FadeInChannel](#mix_fadeinchannel)
* [Mix_FadeInChannelTimed](#mix_fadeinchanneltimed)
* [Mix_Volume](#mix_volume)
* [Mix_VolumeChunk](#mix_volumechunk)
* [Mix_VolumeMusic](#mix_volumemusic)
* [Mix_GetMusicVolume](#mix_getmusicvolume)
* [Mix_MasterVolume](#mix_mastervolume)
* [Mix_HaltChannel](#mix_haltchannel)
* [Mix_HaltGroup](#mix_haltgroup)
* [Mix_HaltMusic](#mix_haltmusic)
* [Mix_ExpireChannel](#mix_expirechannel)
* [Mix_FadeOutChannel](#mix_fadeoutchannel)
* [Mix_FadeOutGroup](#mix_fadeoutgroup)
* [Mix_FadeOutMusic](#mix_fadeoutmusic)
* [Mix_FadingMusic](#mix_fadingmusic)
* [Mix_FadingChannel](#mix_fadingchannel)
* [Mix_Pause](#mix_pause)
* [Mix_Resume](#mix_resume)
* [Mix_Paused](#mix_paused)
* [Mix_PauseMusic](#mix_pausemusic)
* [Mix_ResumeMusic](#mix_resumemusic)
* [Mix_RewindMusic](#mix_rewindmusic)
* [Mix_PausedMusic](#mix_pausedmusic)
* [Mix_ModMusicJumpToOrder](#mix_modmusicjumptoorder)
* [Mix_SetMusicPosition](#mix_setmusicposition)
* [Mix_GetMusicPosition](#mix_getmusicposition)
* [Mix_MusicDuration](#mix_musicduration)
* [Mix_GetMusicLoopStartTime](#mix_getmusicloopstarttime)
* [Mix_GetMusicLoopEndTime](#mix_getmusicloopendtime)
* [Mix_GetMusicLoopLengthTime](#mix_getmusiclooplengthtime)
* [Mix_Playing](#mix_playing)
* [Mix_PlayingMusic](#mix_playingmusic)
* [Mix_SetMusicCMD](#mix_setmusiccmd)
* [Mix_SetSynchroValue](#mix_setsynchrovalue)
* [Mix_GetSynchroValue](#mix_getsynchrovalue)
* [Mix_SetSoundFonts](#mix_setsoundfonts)
* [Mix_GetSoundFonts](#mix_getsoundfonts)
* [Mix_EachSoundFont](#mix_eachsoundfont)
* [Mix_SetTimidityCfg](#mix_settimiditycfg)
* [Mix_GetTimidityCfg](#mix_gettimiditycfg)
* [Mix_GetChunk](#mix_getchunk)
* [Mix_CloseAudio](#mix_closeaudio)
* [SDL_MIXER_MAJOR_VERSION](#sdl_mixer_major_version)
* [SDL_MIXER_MINOR_VERSION](#sdl_mixer_minor_version)
* [SDL_MIXER_PATCHLEVEL](#sdl_mixer_patchlevel)
* [SDL_MIXER_COMPILEDVERSION](#sdl_mixer_compiledversion)
* [MIX_CHANNELS](#mix_channels)
* [MIX_DEFAULT_FREQUENCY](#mix_default_frequency)
* [MIX_DEFAULT_FORMAT](#mix_default_format)
* [MIX_DEFAULT_CHANNELS](#mix_default_channels)
* [MIX_MAX_VOLUME](#mix_max_volume)
* [MIX_CHANNEL_POST](#mix_channel_post)
* [MIX_EFFECTSMAXSPEED](#mix_effectsmaxspeed)
* [SDL_MIXER_VERSION_ATLEAST](#sdl_mixer_version_atleast)
* [SDL_MIXER_VERSION](#sdl_mixer_version)
* [Mix_PlayChannel](#mix_playchannel)
* [Mix_FadeInChannel](#mix_fadeinchannel)
* [Mix_LoadWAV](#mix_loadwav)
* [Mix_SetError](#mix_seterror)
* [Mix_GetError](#mix_geterror)
* [Mix_ClearError](#mix_clearerror)

### Mix_Linked_Version

```lua
global function Mix_Linked_Version(): *SDL_version
```



### MIX_InitFlags

```lua
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

```lua
global function Mix_Init(flags: cint): cint
```



### Mix_Quit

```lua
global function Mix_Quit(): void
```



### Mix_Chunk

```lua
global Mix_Chunk: type = @record{
  allocated: cint,
  abuf: *uint8,
  alen: uint32,
  volume: uint8
}
```



### Mix_Fading

```lua
global Mix_Fading: type = @enum(cint){
  MIX_NO_FADING = 0,
  MIX_FADING_OUT = 1,
  MIX_FADING_IN = 2
}
```



### Mix_MusicType

```lua
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

```lua
global Mix_Music: type = @record{}
```



### Mix_OpenAudio

```lua
global function Mix_OpenAudio(frequency: cint, format: uint16, channels: cint, chunksize: cint): cint
```



### Mix_OpenAudioDevice

```lua
global function Mix_OpenAudioDevice(frequency: cint, format: uint16, channels: cint, chunksize: cint, device: cstring, allowed_changes: cint): cint
```



### Mix_QuerySpec

```lua
global function Mix_QuerySpec(frequency: *cint, format: *uint16, channels: *cint): cint
```



### Mix_AllocateChannels

```lua
global function Mix_AllocateChannels(numchans: cint): cint
```



### Mix_LoadWAV_RW

```lua
global function Mix_LoadWAV_RW(src: *SDL_RWops, freesrc: cint): *Mix_Chunk
```



### Mix_LoadWAV

```lua
global function Mix_LoadWAV(file: cstring): *Mix_Chunk
```



### Mix_LoadMUS

```lua
global function Mix_LoadMUS(file: cstring): *Mix_Music
```



### Mix_LoadMUS_RW

```lua
global function Mix_LoadMUS_RW(src: *SDL_RWops, freesrc: cint): *Mix_Music
```



### Mix_LoadMUSType_RW

```lua
global function Mix_LoadMUSType_RW(src: *SDL_RWops, type: Mix_MusicType, freesrc: cint): *Mix_Music
```



### Mix_QuickLoad_WAV

```lua
global function Mix_QuickLoad_WAV(mem: *uint8): *Mix_Chunk
```



### Mix_QuickLoad_RAW

```lua
global function Mix_QuickLoad_RAW(mem: *uint8, len: uint32): *Mix_Chunk
```



### Mix_FreeChunk

```lua
global function Mix_FreeChunk(chunk: *Mix_Chunk): void
```



### Mix_FreeMusic

```lua
global function Mix_FreeMusic(music: *Mix_Music): void
```



### Mix_GetNumChunkDecoders

```lua
global function Mix_GetNumChunkDecoders(): cint
```



### Mix_GetChunkDecoder

```lua
global function Mix_GetChunkDecoder(index: cint): cstring
```



### Mix_HasChunkDecoder

```lua
global function Mix_HasChunkDecoder(name: cstring): SDL_bool
```



### Mix_GetNumMusicDecoders

```lua
global function Mix_GetNumMusicDecoders(): cint
```



### Mix_GetMusicDecoder

```lua
global function Mix_GetMusicDecoder(index: cint): cstring
```



### Mix_HasMusicDecoder

```lua
global function Mix_HasMusicDecoder(name: cstring): SDL_bool
```



### Mix_GetMusicType

```lua
global function Mix_GetMusicType(music: *Mix_Music): Mix_MusicType
```



### Mix_GetMusicTitle

```lua
global function Mix_GetMusicTitle(music: *Mix_Music): cstring
```



### Mix_GetMusicTitleTag

```lua
global function Mix_GetMusicTitleTag(music: *Mix_Music): cstring
```



### Mix_GetMusicArtistTag

```lua
global function Mix_GetMusicArtistTag(music: *Mix_Music): cstring
```



### Mix_GetMusicAlbumTag

```lua
global function Mix_GetMusicAlbumTag(music: *Mix_Music): cstring
```



### Mix_GetMusicCopyrightTag

```lua
global function Mix_GetMusicCopyrightTag(music: *Mix_Music): cstring
```



### Mix_SetPostMix

```lua
global function Mix_SetPostMix(mix_func: function(pointer, *uint8, cint): void, arg: pointer): void
```



### Mix_HookMusic

```lua
global function Mix_HookMusic(mix_func: function(pointer, *uint8, cint): void, arg: pointer): void
```



### Mix_HookMusicFinished

```lua
global function Mix_HookMusicFinished(music_finished: function(): void): void
```



### Mix_GetMusicHookData

```lua
global function Mix_GetMusicHookData(): pointer
```



### Mix_ChannelFinished

```lua
global function Mix_ChannelFinished(channel_finished: function(cint): void): void
```



### Mix_EffectFunc_t

```lua
global Mix_EffectFunc_t: type = @function(cint, pointer, cint, pointer): void
```



### Mix_EffectDone_t

```lua
global Mix_EffectDone_t: type = @function(cint, pointer): void
```



### Mix_RegisterEffect

```lua
global function Mix_RegisterEffect(chan: cint, f: Mix_EffectFunc_t, d: Mix_EffectDone_t, arg: pointer): cint
```



### Mix_UnregisterEffect

```lua
global function Mix_UnregisterEffect(channel: cint, f: Mix_EffectFunc_t): cint
```



### Mix_UnregisterAllEffects

```lua
global function Mix_UnregisterAllEffects(channel: cint): cint
```



### Mix_SetPanning

```lua
global function Mix_SetPanning(channel: cint, left: uint8, right: uint8): cint
```



### Mix_SetPosition

```lua
global function Mix_SetPosition(channel: cint, angle: int16, distance: uint8): cint
```



### Mix_SetDistance

```lua
global function Mix_SetDistance(channel: cint, distance: uint8): cint
```



### Mix_SetReverseStereo

```lua
global function Mix_SetReverseStereo(channel: cint, flip: cint): cint
```



### Mix_ReserveChannels

```lua
global function Mix_ReserveChannels(num: cint): cint
```



### Mix_GroupChannel

```lua
global function Mix_GroupChannel(which: cint, tag: cint): cint
```



### Mix_GroupChannels

```lua
global function Mix_GroupChannels(from: cint, to: cint, tag: cint): cint
```



### Mix_GroupAvailable

```lua
global function Mix_GroupAvailable(tag: cint): cint
```



### Mix_GroupCount

```lua
global function Mix_GroupCount(tag: cint): cint
```



### Mix_GroupOldest

```lua
global function Mix_GroupOldest(tag: cint): cint
```



### Mix_GroupNewer

```lua
global function Mix_GroupNewer(tag: cint): cint
```



### Mix_PlayChannel

```lua
global function Mix_PlayChannel(channel: cint, chunk: *Mix_Chunk, loops: cint): cint
```



### Mix_PlayChannelTimed

```lua
global function Mix_PlayChannelTimed(channel: cint, chunk: *Mix_Chunk, loops: cint, ticks: cint): cint
```



### Mix_PlayMusic

```lua
global function Mix_PlayMusic(music: *Mix_Music, loops: cint): cint
```



### Mix_FadeInMusic

```lua
global function Mix_FadeInMusic(music: *Mix_Music, loops: cint, ms: cint): cint
```



### Mix_FadeInMusicPos

```lua
global function Mix_FadeInMusicPos(music: *Mix_Music, loops: cint, ms: cint, position: float64): cint
```



### Mix_FadeInChannel

```lua
global function Mix_FadeInChannel(channel: cint, chunk: *Mix_Chunk, loops: cint, ms: cint): cint
```



### Mix_FadeInChannelTimed

```lua
global function Mix_FadeInChannelTimed(channel: cint, chunk: *Mix_Chunk, loops: cint, ms: cint, ticks: cint): cint
```



### Mix_Volume

```lua
global function Mix_Volume(channel: cint, volume: cint): cint
```



### Mix_VolumeChunk

```lua
global function Mix_VolumeChunk(chunk: *Mix_Chunk, volume: cint): cint
```



### Mix_VolumeMusic

```lua
global function Mix_VolumeMusic(volume: cint): cint
```



### Mix_GetMusicVolume

```lua
global function Mix_GetMusicVolume(music: *Mix_Music): cint
```



### Mix_MasterVolume

```lua
global function Mix_MasterVolume(volume: cint): cint
```



### Mix_HaltChannel

```lua
global function Mix_HaltChannel(channel: cint): cint
```



### Mix_HaltGroup

```lua
global function Mix_HaltGroup(tag: cint): cint
```



### Mix_HaltMusic

```lua
global function Mix_HaltMusic(): cint
```



### Mix_ExpireChannel

```lua
global function Mix_ExpireChannel(channel: cint, ticks: cint): cint
```



### Mix_FadeOutChannel

```lua
global function Mix_FadeOutChannel(which: cint, ms: cint): cint
```



### Mix_FadeOutGroup

```lua
global function Mix_FadeOutGroup(tag: cint, ms: cint): cint
```



### Mix_FadeOutMusic

```lua
global function Mix_FadeOutMusic(ms: cint): cint
```



### Mix_FadingMusic

```lua
global function Mix_FadingMusic(): Mix_Fading
```



### Mix_FadingChannel

```lua
global function Mix_FadingChannel(which: cint): Mix_Fading
```



### Mix_Pause

```lua
global function Mix_Pause(channel: cint): void
```



### Mix_Resume

```lua
global function Mix_Resume(channel: cint): void
```



### Mix_Paused

```lua
global function Mix_Paused(channel: cint): cint
```



### Mix_PauseMusic

```lua
global function Mix_PauseMusic(): void
```



### Mix_ResumeMusic

```lua
global function Mix_ResumeMusic(): void
```



### Mix_RewindMusic

```lua
global function Mix_RewindMusic(): void
```



### Mix_PausedMusic

```lua
global function Mix_PausedMusic(): cint
```



### Mix_ModMusicJumpToOrder

```lua
global function Mix_ModMusicJumpToOrder(order: cint): cint
```



### Mix_SetMusicPosition

```lua
global function Mix_SetMusicPosition(position: float64): cint
```



### Mix_GetMusicPosition

```lua
global function Mix_GetMusicPosition(music: *Mix_Music): float64
```



### Mix_MusicDuration

```lua
global function Mix_MusicDuration(music: *Mix_Music): float64
```



### Mix_GetMusicLoopStartTime

```lua
global function Mix_GetMusicLoopStartTime(music: *Mix_Music): float64
```



### Mix_GetMusicLoopEndTime

```lua
global function Mix_GetMusicLoopEndTime(music: *Mix_Music): float64
```



### Mix_GetMusicLoopLengthTime

```lua
global function Mix_GetMusicLoopLengthTime(music: *Mix_Music): float64
```



### Mix_Playing

```lua
global function Mix_Playing(channel: cint): cint
```



### Mix_PlayingMusic

```lua
global function Mix_PlayingMusic(): cint
```



### Mix_SetMusicCMD

```lua
global function Mix_SetMusicCMD(command: cstring): cint
```



### Mix_SetSynchroValue

```lua
global function Mix_SetSynchroValue(value: cint): cint
```



### Mix_GetSynchroValue

```lua
global function Mix_GetSynchroValue(): cint
```



### Mix_SetSoundFonts

```lua
global function Mix_SetSoundFonts(paths: cstring): cint
```



### Mix_GetSoundFonts

```lua
global function Mix_GetSoundFonts(): cstring
```



### Mix_EachSoundFont

```lua
global function Mix_EachSoundFont(Function: function(cstring, pointer): cint, data: pointer): cint
```



### Mix_SetTimidityCfg

```lua
global function Mix_SetTimidityCfg(path: cstring): cint
```



### Mix_GetTimidityCfg

```lua
global function Mix_GetTimidityCfg(): cstring
```



### Mix_GetChunk

```lua
global function Mix_GetChunk(channel: cint): *Mix_Chunk
```



### Mix_CloseAudio

```lua
global function Mix_CloseAudio(): void
```



### SDL_MIXER_MAJOR_VERSION

```lua
global SDL_MIXER_MAJOR_VERSION: cint
```



### SDL_MIXER_MINOR_VERSION

```lua
global SDL_MIXER_MINOR_VERSION: cint
```



### SDL_MIXER_PATCHLEVEL

```lua
global SDL_MIXER_PATCHLEVEL: cint
```



### SDL_MIXER_COMPILEDVERSION

```lua
global SDL_MIXER_COMPILEDVERSION: cint
```



### MIX_CHANNELS

```lua
global MIX_CHANNELS: cint
```



### MIX_DEFAULT_FREQUENCY

```lua
global MIX_DEFAULT_FREQUENCY: cint
```



### MIX_DEFAULT_FORMAT

```lua
global MIX_DEFAULT_FORMAT: cint
```



### MIX_DEFAULT_CHANNELS

```lua
global MIX_DEFAULT_CHANNELS: cint
```



### MIX_MAX_VOLUME

```lua
global MIX_MAX_VOLUME: cint
```



### MIX_CHANNEL_POST

```lua
global MIX_CHANNEL_POST: cint
```



### MIX_EFFECTSMAXSPEED

```lua
global MIX_EFFECTSMAXSPEED: cstring
```



### SDL_MIXER_VERSION_ATLEAST

```lua
global function SDL_MIXER_VERSION_ATLEAST(x: cint, y: cint, z: cint): SDL_bool
```



### SDL_MIXER_VERSION

```lua
global function SDL_MIXER_VERSION(x: *SDL_version)
```



### Mix_PlayChannel

```lua
global function Mix_PlayChannel(channel: cint, chunk: *Mix_Chunk, loops: cint): cint
```



### Mix_FadeInChannel

```lua
global function Mix_FadeInChannel(channel: cint, chunk: *Mix_Chunk, loops: cint, ms: cint): cint
```



### Mix_LoadWAV

```lua
global function Mix_LoadWAV(file: cstring): *Mix_Chunk
```



### Mix_SetError

```lua
global function Mix_SetError(fmt: cstring, ...: cvarargs): cint
```



### Mix_GetError

```lua
global function Mix_GetError(): cstring
```



### Mix_ClearError

```lua
global function Mix_ClearError(): void
```



---
