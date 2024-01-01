/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/audio/sound.h"
#include "nene/impl/audio/sound.h"
#include "SDL_assert.h"

nene_Sound nene_Sound_zero(void) {
  return (nene_Sound){
    .raw = NULL,
  };
}

nene_Sound nene_Sound_copy(nene_Sound *sound) {
  if (sound == NULL) {
    return nene_Sound_zero();
  }
  else {
    return *sound;
  }
}

nene_SoundCreation nene_Sound_load(const char *filepath) {
  SDL_assert(filepath != NULL);

  if (filepath == NULL) {
    return (nene_SoundCreation){
      .created = false,
    };
  }

  Mix_Chunk *raw_sound = Mix_LoadWAV(filepath);

  if (raw_sound == NULL) {
    return (nene_SoundCreation){
      .created = false,
    };
  }

  return (nene_SoundCreation){
    .created = true,
    .sound = (nene_Sound){
      .raw = raw_sound,
      .channel = -1,
    },
  };
}

bool nene_Sound_play(nene_Sound *sound, int16_t loops) {
  SDL_assert(sound != NULL && sound->raw != NULL);

  if (sound == NULL || sound->raw == NULL) {
    return false;
  }

  sound->channel = Mix_PlayChannel(-1, nene_impl_Sound_get_raw(*sound), loops);

  if (sound->channel == -1) {
    return false;
  }

  return true;
}

bool nene_Sound_halt(nene_Sound *sound) {
  SDL_assert(sound != NULL);

  if (sound == NULL) {
    return false;
  }

  if (sound->channel >= 0) {
    if (Mix_HaltChannel(sound->channel) != 0) {
      return false;
    }
  }

  return true;
}

bool nene_Sound_halt_all(void) {
  return Mix_HaltChannel(-1) != 0;
}

float nene_Sound_set_volume(nene_Sound sound, float volume) {
  SDL_assert(volume >= 0.0f && volume <= 1.0f);
  int scaled_vol = (int)(volume * MIX_MAX_VOLUME);

  // clamp(scaled_vol, 0, MIX_MAX_VOLUME)
  scaled_vol = scaled_vol < 0 ? 0 : scaled_vol;
  scaled_vol = scaled_vol > MIX_MAX_VOLUME ? MIX_MAX_VOLUME : scaled_vol;

  int16_t prev_volume = Mix_VolumeChunk(nene_impl_Sound_get_raw(sound), scaled_vol);

  return (float)prev_volume / MIX_MAX_VOLUME;
}

void nene_Sound_destroy(nene_Sound *sound) {
  SDL_assert_release(sound != NULL);

  if (sound == NULL || sound->raw == NULL) {
    return;
  }

  Mix_FreeChunk(nene_impl_Sound_get_raw(*sound));

  *sound = (nene_Sound){ .raw = NULL };
}
