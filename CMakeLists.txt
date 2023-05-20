# Copyright (c) 2021-present André Luiz Alvares
# Nene is licensed under the Zlib license.
# Please refer to the LICENSE file for details
# SPDX-License-Identifier: Zlib

# Set minimum cmake version, this should go until the latest available release,
# NOTE: if version interval it's changed, be sure to also update the examples/c/CMakeLists.txt file
cmake_minimum_required(VERSION 3.23-3.26)

# Set the project name, version and language
project(
  nene
  VERSION 0.4
  DESCRIPTION "Game framework on top of SDL aimed for multiple programming languages"
  LANGUAGES C
)

# add the src and external directories on the building procedure
add_subdirectory(external)
add_subdirectory(src)

# also add examples directory
add_subdirectory(examples/c)

# nene installation
install(TARGETS nene external_libs
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib
  RUNTIME DESTINATION bin
  INCLUDES DESTINATION include
  FILE_SET HEADERS
)
