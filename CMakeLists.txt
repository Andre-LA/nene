# Copyright (c) 2021-present André Luiz Alvares
# Nene is licensed under the Zlib license.
# Please refer to the LICENSE file for details
# SPDX-License-Identifier: Zlib

# Set minimum cmake version, this should go until the latest available release,
# the first version it's still to be decided though, but it shouldn't be older than the one used by SDL's CMakeLists.
cmake_minimum_required(VERSION 3.15-3.26)

# Set the project name, version and language
project(
  nene
  VERSION 0.4
  LANGUAGES C
)

# set the C standard, be sure to review compile_flags.txt file too.
set(CMAKE_C_STANDARD_REQUIRED 99)

add_library(${PROJECT_NAME} STATIC)

# add the src and external directories on the building procedure
add_subdirectory(external)
add_subdirectory(src)
add_subdirectory(examples/c)

