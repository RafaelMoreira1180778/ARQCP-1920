#include <stdio.h>
#include "vecop.h"

int *ptrvec, num;

int main(void)
{
    int vec[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
    num = sizeof(vec) / sizeof(vec[0]);
    ptrvec = vec;

    printf("%d\n", vec_sum());
    printf("%d\n", vec_avg());

    return 0;
}
