/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/impl/texture.h"
#include "nene/core.h"
#include "SDL_assert.h"

nene_Texture nene_impl_Texture_init(SDL_Texture *raw, uint16_t width, uint16_t height, nene_TextureAccess access) {
	SDL_assert(raw != NULL);
	return (nene_Texture){
		.raw = raw,
		.width = width,
		.height = height,
		.access = (SDL_TextureAccess)access,
	};
}

SDL_Texture *nene_impl_Texture_get_raw(nene_Texture texture) {
	SDL_assert(texture.raw != NULL);
	return texture.raw;
}

bool nene_impl_Texture_apply_raw(nene_Texture *texture, SDL_Texture *raw_texture) {
	SDL_assert(texture != NULL);
	SDL_assert(raw_texture != NULL);

	if (texture == NULL || raw_texture == NULL) {
		return false;
	}

	uint32_t fmt;
	int access;
	int w;
	int h;

	if (SDL_QueryTexture(raw_texture, &fmt, &access, &w, &h) != 0) {
		nene_Core_warn("Nene.Texture.apply_raw", "could not query applied texture");
		return false;
	}

	if (texture->raw != NULL) {
		nene_Texture_destroy(texture);
	}

	*texture = nene_impl_Texture_init(raw_texture, w, h, access);
	return true;
}

