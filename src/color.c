#include "nene/color.h"

const nene_Color nene_Color_black  = { .r = 0x00, .g = 0x00, .b = 0x00, .a = 0xff };
const nene_Color nene_Color_white  = { .r = 0xff, .g = 0xff, .b = 0xff, .a = 0xff };
const nene_Color nene_Color_red    = { .r = 0xff, .g = 0x00, .b = 0x00, .a = 0xff };
const nene_Color nene_Color_green  = { .r = 0x00, .g = 0xff, .b = 0x00, .a = 0xff };
const nene_Color nene_Color_blue   = { .r = 0x00, .g = 0x00, .b = 0xff, .a = 0xff };
const nene_Color nene_Color_yellow = { .r = 0xfc, .g = 0xea, .b = 0x20, .a = 0xff };
const nene_Color nene_Color_cyan   = { .r = 0x00, .g = 0xff, .b = 0xff, .a = 0xff };
const nene_Color nene_Color_bg     = { .r = 0x69, .g = 0x46, .b = 0x6b, .a = 0xff };

bool nene_Color_equals(nene_Color a, nene_Color b) {
  return a.r == b.r && a.g == b.g && a.b == b.b && a.a == b.a;
}
