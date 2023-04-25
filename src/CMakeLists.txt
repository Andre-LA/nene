# Copyright (c) 2021-present André Luiz Alvares
# Nene is licensed under the Zlib license.
# Please refer to the LICENSE file for details
# SPDX-License-Identifier: Zlib

target_sources(${PROJECT_NAME} PUBLIC
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
)

# # add the nene include directory
target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR}/include)

# # add the sdl include directories (NOTE: remove these once the (game) usage of SDL get's unnecessary)
target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR}/external/SDL/include)
target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR}/external/SDL_mixer/include)
target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR}/external/SDL_image)
target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR}/external/SDL_ttf)

# add linking to the external dependencies (SDL libraries) to the target
target_link_libraries(${PROJECT_NAME} PUBLIC external_libs)
target_link_libraries(${PROJECT_NAME} PUBLIC m)
