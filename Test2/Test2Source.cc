#include <iostream>
#include "Test2Header.h"

#ifdef VERBOSE
#include "HelperFunctions.h"
#endif

int main(int argc, const char** argv) {
#ifdef VERBOSE
    HelperFunctions::print_welcome();
#endif

    hello_test2(); 

#ifdef VERBOSE
    HelperFunctions::print_goodbye();
#endif
}

void hello_test2(void) {
    std::cout << "Hello, Test" << TEST_NUMBER << "!" << std::endl;
}

