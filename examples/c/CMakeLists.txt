# Copyright (c) 2021-present André Luiz Alvares
# Nene is licensed under the Zlib license.
# Please refer to the LICENSE file for details
# SPDX-License-Identifier: Zlib

# Set the project name, version and language
project(
  nene_examples
  VERSION 0.1
  LANGUAGES C
)

# set the C standard, be sure to follow what's written on compile_flags.txt file.
set(CMAKE_C_STANDARD_REQUIRED 99)

# finally, the examples
add_executable(nene_c_collisions WIN32 collisions.c)
target_link_libraries(nene_c_collisions PRIVATE libnene)
