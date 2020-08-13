#include <unistd.h>
#include "foo.h"
// ex 3

int foo() {
    write(1, "hello\n", 6);
    return 0;
}