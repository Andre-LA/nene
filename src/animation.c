/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

#include "nene/animation.h"
#include <stdlib.h>

nene_Animation nene_Animation_zero(void) {
  return (nene_Animation){
    .loop = false
  };
}

nene_Animation nene_Animation_copy(nene_Animation *animation) {
  if (animation == NULL) {
    return nene_Animation_zero();
  }
  else {
    return *animation;
  }
}

bool nene_Animation_equals(nene_Animation a, nene_Animation b) {
  return a.from == b.from && a.to == b.to && a.loop == b.loop &&
         a.interval == b.interval;
}
