#include <stdio.h>
#include "greatest.h"

int main(void)
{
    int a = 1;
    int b = 2;
    int c = 3;
    int great = greatest(a, b, c);
    printf("Greatest between %d, %d, %d: %d\n", a, b, c, great);
    return 0;
}