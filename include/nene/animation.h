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

/// Animation property enumeration
typedef enum nene_AnimationProperty {
  NENE_ANIMATION_PROPERTY_LOOP   = 1,
  NENE_ANIMATION_PROPERTY_REWIND = 2,
} nene_AnimationProperty;

/// Animation range type, used on Spritesheets
typedef struct nene_AnimationRange {
  uint16_t interval;    /// animation speed
  uint16_t from;        /// starting frame of the animation (inclusive)
  uint16_t to;          /// ending frame of the animation (inclusive)
  uint16_t properties;  /// animation properties
} nene_AnimationRange;

/// Tests if a and b animation ranges are equal.
bool nene_AnimationRange_equals(nene_AnimationRange a, nene_AnimationRange b);

#endif // NENE_ANIMATION_H
