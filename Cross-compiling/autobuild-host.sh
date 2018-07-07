#/usr/bin/env bash

original_directory=$(pwd)
host_arch=$(arch)

# Create build directory
mkdir build-$host_arch && cd build-$host_arch

# Configure with CMake
cmake ..

# Build
make install

# Reset directory
cd $original_directory
