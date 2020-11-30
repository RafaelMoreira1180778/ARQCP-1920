#include <stdio.h>
#include "cube.h"

int main(void)
{
    int x = 2;
    int xcube = cube(x);
    printf("cube of %d = %d\n", x, xcube);
    return 0;
}