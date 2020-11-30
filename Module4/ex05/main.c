#include <stdio.h>
#include "incsquare.h"

int main(void)
{
    int x = 3;
    int *v1 = &x;
    int v2 = 2;
    printf("v1 = %d | v2 = %d\n", *v1, v2);
    int square = inc_and_square(v1, v2);
    printf("v1 was increased to %d\nv2 squared = %d\n", *v1, square);
    return 0;
}