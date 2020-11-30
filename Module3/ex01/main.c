#include <stdio.h>
#include "zerocount.h"

char *ptr1;

int main(void)
{
    char str[] = "a0b0c0d0e0";
    ptr1 = str;

    printf("%d\n", zero_count());

    return 0;
}