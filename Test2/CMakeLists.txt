cmake_minimum_required(VERSION 2.6)

# Defines the PROJECT_SOURCE_DIR variable
project(Test2)

# Set CMake variable for substitution in source
set(TEST_NUMBER 2)

# Add optional case
option(VERBOSE "Print more information" OFF)

# Generate Test2.h from substitution
configure_file(
    ${PROJECT_SOURCE_DIR}/Test2Header.h.in
    ${PROJECT_BINARY_DIR}/Test2Header.h
)

if (VERBOSE)
    # Include another directory for header search
    include_directories(${PROJECT_SOURCE_DIR}/HelperFunctions)
    # Add this directory as another CMake project
    add_subdirectory(HelperFunctions)
    # {EXTRA_LIBS} initially empty and evals to empty string
    set(EXTRA_LIBS ${EXTRA_LIBS} HelperFunctions)
endif()

# Add PROJECT_BINARY_DIR to header search path
include_directories(${PROJECT_BINARY_DIR})

# Create executable from `Test2Source.cc` because it has main()
add_executable(Test2 Test2Source.cc)
# Link the compiled subdirectory to the main executable
target_link_libraries(Test2 ${EXTRA_LIBS})

