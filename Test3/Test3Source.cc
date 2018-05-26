#include <iostream>
#include "Test3Header.h"

#ifdef VERBOSE
#include "HelperFunctions.h"
#endif

int main(int argc, const char** argv) {
#ifdef VERBOSE
    HelperFunctions::print_welcome();
#endif

    hello_test3(); 

    print_args(argc, argv);

#ifdef VERBOSE
    HelperFunctions::print_goodbye();
#endif
}

void hello_test3(void) {
    std::cout << "Hello, Test" << TEST_NUMBER << "!" << std::endl;
}

void print_args(int argc, const char** argv) {
    for (size_t _i = 0; _i < argc; _i++) {
        std::cout << "Args[" << _i << "] = " << argv[_i] << std::endl;
    }
}

