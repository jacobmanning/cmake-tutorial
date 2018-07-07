#!/bin/sh

original_directory=$(pwd)
host_arch=$(arch)

mkdir -p build-$host_arch
cd build-$host_arch

# Configure with CMake, modify to `-DVERBOSE=OFF` or leave
# default value (OFF) by removing the definition if you want
# to turn off verbosity
CC=gcc CXX=g++ cmake .. -DVERBOSE=ON

make

cd $original_directory
