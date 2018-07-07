#!/bin/sh

original_directory=$(pwd)
host_arch=$(arch)

mkdir -p build-$host_arch
cd build-$host_arch

cmake ..

make install

ctest .

cd $original_directory
