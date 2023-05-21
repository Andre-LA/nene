# Copyright (c) 2021-present André Luiz Alvares
# Nene is licensed under the Zlib license.
# Please refer to the LICENSE file for details
# SPDX-License-Identifier: Zlib

# This version should match the interval of nene's root CMakeLists.txt
cmake_minimum_required(VERSION 3.23-3.26)

# Set the project name, version and language
project(
  nene_examples
  VERSION 0.1
  LANGUAGES C
)

# finally, the examples
add_executable(collisions WIN32 collisions.c)
target_link_libraries(collisions PRIVATE nene)

# set the C standard properties, 
# be sure to follow the same standard of nene (see the src/CMakeLists.txt file)
set_target_properties(collisions PROPERTIES
  C_STANDARD 99
  C_STANDARD_REQUIRED YES
  C_EXTENSIONS NO
)
