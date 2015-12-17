#include <iostream>
#include "HelloWorld.h"

HelloWorld::HelloWorld() {
    called = 0;
}

void HelloWorld::call() {
    printf("cpp called: %d\n", called++);
}
