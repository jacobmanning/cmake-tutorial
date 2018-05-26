cmake_minimum_required(VERSION 2.6)

# Defines the PROJECT_SOURCE_DIR variable
project(Test3)

# Set CMake variable for substitution in source
set(TEST_NUMBER 3)

# Add optional case
option(VERBOSE "Print more information" OFF)

# Generate Test3.h from substitution
configure_file(
    ${PROJECT_SOURCE_DIR}/Test3Header.h.in
    ${PROJECT_BINARY_DIR}/Test3Header.h
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

# Create executable from `Test3Source.cc` because it has main()
add_executable(Test3 Test3Source.cc)
# Link the compiled subdirectory to the main executable
target_link_libraries(Test3 ${EXTRA_LIBS})

# Set the variable TEST_DIR to the abs path to this file
get_filename_component(TEST_ROOT_DIR ${CMAKE_SOURCE_DIR} ABSOLUTE)
# Set the install path to the build directory
set(CMAKE_INSTALL_PREFIX ${TEST_ROOT_DIR}/build)

# Add install targets
install(TARGETS Test3 DESTINATION bin)
install(FILES ${PROJECT_BINARY_DIR}/Test3Header.h
        DESTINATION include)

