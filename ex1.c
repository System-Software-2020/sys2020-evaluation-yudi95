#include <unistd.h>

// ex 2

int main() {
    syscall(4, 1, "hello\n", 6);
    return 0;
}