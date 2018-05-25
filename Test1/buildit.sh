#!/usr/bin/env bash

original_directory=$(pwd)

# Create build directory
mkdir build && cd build

# Configure with CMake
cmake ..

# Build
make

# Reset directory
cd $original_directory
