#!/bin/sh

host_arch=$(arch)
build_dir=build-$host_arch

if [ -d ./$build_dir ]; then
    \rm -rf ./$build_dir
fi
