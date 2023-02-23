/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/animation.h"

/// Tests if a and b animation ranges are equal.
bool nene_AnimationRange_equals(nene_AnimationRange a, nene_AnimationRange b) {
  return a.from == b.from && a.to == b.to && a.properties == b.properties &&
         a.interval == b.interval;
}
