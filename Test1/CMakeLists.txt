cmake_minimum_required(VERSION 2.6)

# Defines the PROJECT_SOURCE_DIR variable
project(Test1)

# Set CMake variable for substitution in source
set (TEST_NUMBER 1)

# Generate Test1Header.h from substitution
configure_file(
    ${PROJECT_SOURCE_DIR}/Test1Header.h.in
    ${PROJECT_BINARY_DIR}/Test1Header.h
)

# Add PROJECT_BINARY_DIR to header search path
include_directories(${PROJECT_BINARY_DIR})

# Create executable from `Test1Source.cc` because it has main()
add_executable(Test1 Test1Source.cc)
