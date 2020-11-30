#include <stdio.h>
#include "rotate.h"

int main(void)
{
    int num = 2;
    int nbits = 8;
    int right = rotate_right(num, nbits);
    int left = rotate_left(num, nbits);
    printf("num = %d rotated %d bits to the right; result = %d\n", num, nbits, right);
    printf("num = %d rotated %d bits to the left; result = %d\n", num, nbits, left);
    return 0;
}