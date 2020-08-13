#include <unistd.h>
// ex 3

ssize_t write_2(int fd, const void *s, size_t n) {
    write(fd, s, n);
    return 0;
}