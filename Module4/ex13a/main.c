#include <stdio.h>
#include "activate.h"

int main(void)
{
    int a = 10000;
    int left = 2;
    int right = 3;
    int result = activate_bits(a, left, right);
    printf("size of %d(a) = %d, left = %d, right = %d, result = %d\n", a, sizeof(a) * 8, left, right, result);
    return 0;
}