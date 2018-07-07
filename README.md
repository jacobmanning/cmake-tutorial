# CMake Tutorial

This repository is an adaptation of the [official CMake
tutorial](https://cmake.org/cmake-tutorial/). When I was learning how to use
CMake, I only found that tutorial mildly helpful. In my opinion, it covers a
lot of important material very quickly and focuses too much on advanced
features (like testing and installers) rather than just getting the basics.
Maybe this tutorial will help you learn.

## How to use this repository

I would recommend starting at Test0 and continuing through the examples. For
each test/example, start by looking at the `CMakeLists.txt` file and then view
the source code. Once you think you have an idea of what is going on, run
`./autobuild.sh` to run CMake/Make and view the build directory (most likely
`build-x86_64`, but it changes depending on your host environment) to see what
was built. If you would need to remove the build directory and start from
scratch, run `./autoclean.sh`.


The `autobuild.sh` and `autoclean.sh` scripts are simple helpers
to prevent manually typing the same commands repeatedly. The `autobuild.sh`
script occasionally changes slightly, however, so check that out each time as
well.


Once you have viewed and understood all of the examples in this repository, you
can check out the [official CMake tutorial](https://cmake.org/cmake-tutorial/)
or look at other repositories that use CMake to learn more advanced constructs.
