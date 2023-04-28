# Copyright (c) 2021-present André Luiz Alvares
# Nene is licensed under the Zlib license.
# Please refer to the LICENSE file for details
# SPDX-License-Identifier: Zlib

# This cmake file add the "external_libs" library target, with all external modules (that is, SDL libraries)

# setup options, in summary, use SDL's vendored dependencies instead of relying on package managers and
# do not "install" SDL.
set(SDL2IMAGE_VENDORED ON CACHE BOOL "")
set(SDL2MIXER_VENDORED ON CACHE BOOL "")
set(SDL2TTF_VENDORED ON CACHE BOOL "")
set(SDL2TTF_INSTALL OFF CACHE BOOL "")
set(SDL2MIXER_INSTALL OFF CACHE BOOL "")
set(SDL2IMAGE_INSTALL OFF CACHE BOOL "")

# Adds the SDL subdirectories, which are git sub-modules,
# be sure to clone nene with "recurse-submodules" flag, otherwise the SDL
# libraries will not be clonned with nene.
add_subdirectory(SDL)
add_subdirectory(SDL_image)
add_subdirectory(SDL_mixer)
add_subdirectory(SDL_ttf)

# creating the "external_libs" library target
add_library(external_libs INTERFACE)

# adding linking to the SDL libraries to the project build.
# context: https://wiki.libsdl.org/SDL2/README/cmake
if(TARGET SDL2::SDL2main)
  target_link_libraries(libnene INTERFACE SDL2::SDL2main)
endif()

target_link_libraries(libnene INTERFACE SDL2::SDL2)
target_link_libraries(libnene INTERFACE SDL2_image::SDL2_image)
target_link_libraries(libnene INTERFACE SDL2_mixer::SDL2_mixer)
target_link_libraries(libnene INTERFACE SDL2_ttf::SDL2_ttf)

