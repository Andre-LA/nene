/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#ifndef NENE_ANIMATION_H
#define NENE_ANIMATION_H

#include <stdint.h>
#include <stdbool.h>

/// Animation range type, used on Spritesheets
/// 
/// The fields are:
/// - interval: animation speed
/// - from: starting frame of the animation (inclusive)
/// - to: ending frame of the animation (inclusive)
/// - properties: animation properties
typedef struct nene_Animation {
  uint16_t interval;
  uint16_t from;
  uint16_t to;
  bool loop;
} nene_Animation;

/// Tests if a and b animation ranges are equal.
bool nene_Animation_equals(nene_Animation a, nene_Animation b);

#endif // NENE_ANIMATION_H
