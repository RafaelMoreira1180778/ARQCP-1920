#include <stdio.h>
#include "nsa.h"

char *ptr1;

int main(void)
{
    char str[] = "decrypt this nsa";
    ptr1 = str;

    printf("%d\n", encrypt());

    return 0;
}
