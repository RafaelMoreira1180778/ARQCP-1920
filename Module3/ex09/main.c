#include <stdio.h>
#include "vecsearch.h"

short *ptrvec;
short x;
int num;

int main(void)
{
    short vec[] = {1, 2, 1, 3, 1, 4, 1, 5};
    num = sizeof(vec) / sizeof(vec[0]);
    ptrvec = vec;
    x = 3;

    printf("Endereço de %d: %p\n", x, vec_search());

    return 0;
}
