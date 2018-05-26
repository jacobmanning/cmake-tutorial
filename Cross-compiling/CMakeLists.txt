cmake_minimum_required(VERSION 2.6)

project(Hello)

message(STATUS "Cross compiling? ${CMAKE_CROSSCOMPILING}")

add_executable(Hello Hello.cc)

set(CMAKE_INSTALL_PREFIX ${CMAKE_SOURCE_DIR}/build)
install(TARGETS Hello DESTINATION bin)

