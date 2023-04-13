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
typedef struct nene_Animation {
  /// animation speed
  uint16_t interval;
  /// starting frame of the animation (inclusive)
  uint16_t from;
  /// ending frame of the animation (inclusive)
  uint16_t to;
  /// animation properties
  bool loop;
} nene_Animation;

/// Tests if a and b animation ranges are equal.
bool nene_Animation_equals(nene_Animation a, nene_Animation b);

#endif // NENE_ANIMATION_H
