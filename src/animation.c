/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/animation.h"

/// Tests if a and b animation ranges are equal.
bool nene_Animation_equals(nene_Animation a, nene_Animation b) {
  return a.from == b.from && a.to == b.to && a.loop == b.loop &&
         a.interval == b.interval;
}
