#include <iostream>
#include "Test1Header.h"

int main(int argc, const char** argv) {
   hello_test1();
}

void hello_test1(void) {
    std::cout << "Hello, Test" << TEST_NUMBER << "!" << std::endl;
}
