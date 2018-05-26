#include <iostream>
#include "Test4Header.h"

#ifdef VERBOSE
#include "HelperFunctions.h"
#endif

int main(int argc, const char** argv) {
#ifdef VERBOSE
    HelperFunctions::print_welcome();
#endif

    if (argc < 1) {
        hello_test4();
    } else {
        std::cout << argv[1] << std::endl;
    }

#ifdef VERBOSE
    HelperFunctions::print_goodbye();
#endif
}

void hello_test4(void) {
    std::cout << "Hello, Test" << TEST_NUMBER << "!" << std::endl;
}

