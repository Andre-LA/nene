#include "nene/color.h"
#include <stdlib.h>

nene_Color nene_Color_zero(void) {
	return (nene_Color) {
		.r = 0x00
	};
}

nene_Color nene_Color_copy(nene_Color *color) {
	if (color == NULL) {
		return nene_Color_zero();
	}
	else {
		return *color;
	}
}

nene_Color nene_Color_black(void) {
	return (nene_Color){ .r = 0x00, .g = 0x00, .b = 0x00, .a = 0xff };
}

nene_Color nene_Color_white(void) {
	return (nene_Color){ .r = 0xff, .g = 0xff, .b = 0xff, .a = 0xff };
}

nene_Color nene_Color_red(void) {
	return (nene_Color){ .r = 0xff, .g = 0x00, .b = 0x00, .a = 0xff };
}

nene_Color nene_Color_green(void) {
	return (nene_Color){ .r = 0x00, .g = 0xff, .b = 0x00, .a = 0xff };
}

nene_Color nene_Color_blue(void) {
	return (nene_Color){ .r = 0x00, .g = 0x00, .b = 0xff, .a = 0xff };
}

nene_Color nene_Color_yellow(void) {
	return (nene_Color){ .r = 0xfc, .g = 0xea, .b = 0x20, .a = 0xff };
}

nene_Color nene_Color_cyan(void) {
	return (nene_Color){ .r = 0x00, .g = 0xff, .b = 0xff, .a = 0xff };
}

nene_Color nene_Color_bg(void) {
	return (nene_Color){ .r = 0x69, .g = 0x46, .b = 0x6b, .a = 0xff };
}

bool nene_Color_equals(nene_Color a, nene_Color b) {
	return a.r == b.r && a.g == b.g && a.b == b.b && a.a == b.a;
}
