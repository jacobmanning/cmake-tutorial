#!/usr/bin/env bash

original_directory=$(pwd)

# Create build directory
mkdir build && cd build

# Configure with CMake, modify to `-DVERBOSE=OFF` or leave
# default value (OFF) by removing the definition if you want
# to turn off verbosity
CC=gcc CXX=g++ cmake -DVERBOSE=ON ..

# Build
make

# Reset directory
cd $original_directory
