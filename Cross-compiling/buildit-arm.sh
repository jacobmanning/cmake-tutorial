#/usr/bin/env bash

original_directory=$(pwd)

# Create build directory
mkdir build-arm && cd build-arm

# Configure with CMake
cmake -DCMAKE_TOOLCHAIN_FILE=$original_directory/arm-toolchain.cmake ..

# Build
make install

# Reset directory
cd $original_directory

