#!/usr/bin/env bash

original_directory=$(pwd)

# Create build directory
mkdir build && cd build
#mkdir bin
#mkdir include

# Configure with CMake, modify to `-DVERBOSE=OFF` or leave
# default value (OFF) by removing the definition if you want
# to turn off verbosity
cmake -DVERBOSE=ON ..

# Build
make install

# Reset directory
cd $original_directory

