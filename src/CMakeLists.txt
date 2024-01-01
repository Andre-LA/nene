# Copyright (c) 2021-present André Luiz Alvares
# Nene is licensed under the Zlib license.
# Please refer to the LICENSE file for details
# SPDX-License-Identifier: Zlib

# variables
set(NENE_PROJECT_DIR "${PROJECT_SOURCE_DIR}")
set(NENE_INCLUDE_DIR "${NENE_PROJECT_DIR}/include")

add_library(nene STATIC)
add_library(nene::nene ALIAS nene)

# set the C standard, be sure to follow what's written on compile_flags.txt file.
# NOTE: if you change this, be sure to update the same setting examples/c/CMakeLists.txt
set_target_properties(nene PROPERTIES
  C_STANDARD 99
  C_STANDARD_REQUIRED YES
  C_EXTENSIONS NO
)

# add the nene include directory
target_include_directories(nene PUBLIC "${PROJECT_SOURCE_DIR}/include")

# add the sdl include directories (TODO: remove these once the (game) usage of SDL get's unnecessary)
target_include_directories(nene PUBLIC "${PROJECT_SOURCE_DIR}/external/SDL/include")
target_include_directories(nene PUBLIC "${PROJECT_SOURCE_DIR}/external/SDL_mixer/include")
target_include_directories(nene PUBLIC "${PROJECT_SOURCE_DIR}/external/SDL_image")
target_include_directories(nene PUBLIC "${PROJECT_SOURCE_DIR}/external/SDL_ttf")

# set the sources of the nene target
set(NENE_SOURCE_FILES
  impl/utils.c
  core.c
  texture.c
  font.c
  texture_atlas.c
  audio/music.c
  audio/sound.c
  math/vec2i.c
  math/vec2.c
  math/rect.c
  math/rectf.c
  math/grid.c
  math/segment.c
  math/shape.c
  intersections.c
  collision.c
  animation.c
  tilemap.c
  color.c
  impl/texture.c
  impl/font.c
  impl/audio/music.c
  impl/audio/sound.c
  impl/math/rect.c
  impl/math/rectf.c
)

# set the headers of the nene target
set(NENE_HEADER_FILES
  "${NENE_INCLUDE_DIR}/nene/impl/utils.h"
  "${NENE_INCLUDE_DIR}/nene/core.h"
  "${NENE_INCLUDE_DIR}/nene/config.h"
  "${NENE_INCLUDE_DIR}/nene/texture.h"
  "${NENE_INCLUDE_DIR}/nene/font.h"
  "${NENE_INCLUDE_DIR}/nene/texture_atlas.h"
  "${NENE_INCLUDE_DIR}/nene/audio/music.h"
  "${NENE_INCLUDE_DIR}/nene/audio/sound.h"
  "${NENE_INCLUDE_DIR}/nene/math/vec2i.h"
  "${NENE_INCLUDE_DIR}/nene/math/vec2.h"
  "${NENE_INCLUDE_DIR}/nene/math/rect.h"
  "${NENE_INCLUDE_DIR}/nene/math/rectf.h"
  "${NENE_INCLUDE_DIR}/nene/math/grid.h"
  "${NENE_INCLUDE_DIR}/nene/math/segment.h"
  "${NENE_INCLUDE_DIR}/nene/math/shape.h"
  "${NENE_INCLUDE_DIR}/nene/intersections.h"
  "${NENE_INCLUDE_DIR}/nene/collision.h"
  "${NENE_INCLUDE_DIR}/nene/animation.h"
  "${NENE_INCLUDE_DIR}/nene/tilemap.h"
  "${NENE_INCLUDE_DIR}/nene/color.h"
  "${NENE_INCLUDE_DIR}/nene/impl/texture.h"
  "${NENE_INCLUDE_DIR}/nene/impl/font.h"
  "${NENE_INCLUDE_DIR}/nene/impl/audio/music.h"
  "${NENE_INCLUDE_DIR}/nene/impl/audio/sound.h"
  "${NENE_INCLUDE_DIR}/nene/impl/math/rect.h"
  "${NENE_INCLUDE_DIR}/nene/impl/math/rectf.h"
)

# set the sources and the headers as the nene target sources
target_sources(nene PUBLIC ${NENE_SOURCE_FILES})

# header files added, that's also necessary to install the header files
# for development
target_sources(nene PUBLIC FILE_SET HEADERS
  BASE_DIRS "${NENE_INCLUDE_DIR}"
  FILES ${NENE_HEADER_FILES}
)

# add linking to the external dependencies (SDL libraries) to the target
target_link_libraries(nene PUBLIC external_libs)

# add linking to libm if necessary
# context: https://cliutils.gitlab.io/modern-cmake/chapters/features/small.html#little-libraries
find_library(LIB_MATH m)
if (LIB_MATH)
  target_link_libraries(nene PUBLIC ${LIB_MATH})
endif()
