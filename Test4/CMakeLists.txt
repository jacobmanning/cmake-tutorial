cmake_minimum_required(VERSION 2.6)

# Defines the PROJECT_SOURCE_DIR variable
project(Test4)

# Set CMake variable for substitution in source
set(TEST_NUMBER 4)

# Add optional case
option(VERBOSE "Print more information" OFF)

# Generate Test4.h from substitution
configure_file(
    ${PROJECT_SOURCE_DIR}/Test4Header.h.in
    ${PROJECT_BINARY_DIR}/Test4Header.h
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

# Create executable from `Test4Source.cc` because it has main()
add_executable(Test4 Test4Source.cc)
# Link the compiled subdirectory to the main executable
target_link_libraries(Test4 ${EXTRA_LIBS})

# Set the variable TEST_DIR to the abs path to this file
get_filename_component(TEST_ROOT_DIR ${CMAKE_SOURCE_DIR} ABSOLUTE)
# Set the install path to the build directory
set(CMAKE_INSTALL_PREFIX ${TEST_ROOT_DIR}/build)

# Add install targets
install(TARGETS Test4 DESTINATION bin)
install(FILES ${PROJECT_BINARY_DIR}/Test4Header.h
        DESTINATION include)

# Enable testing
enable_testing()

# Add a simple unit test
#   NAME: name of the test
#   COMMAND: command to execute
add_test(NAME Test4Init
         COMMAND bin/Test4 "Hello, Test4!")

# Define a macro to easily create tests
macro (MAKE_TEST arg result)
    # Adding a unit test
    add_test(NAME Test4${arg}
             COMMAND bin/Test4 ${arg})
    # Set expected result
    set_tests_properties(
        Test4${arg}
        PROPERTIES
        PASS_REGULAR_EXPRESSION ${result}
    )
endmacro()

# Use macro for a test
MAKE_TEST("Hello" "Hello")

