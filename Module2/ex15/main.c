#include <stdio.h>
#include "compute.h"

int A, B, C, D;
int result;

int main(void)
{

    A = 1;
    B = 2;
    C = 3;
    D = 4;

    printf("A:%d\nB:%d\nC:%d\nD:%d\n", A, B, C, D);

    result = compute();
    printf("compute = %d\n", result);

    return 0;
}