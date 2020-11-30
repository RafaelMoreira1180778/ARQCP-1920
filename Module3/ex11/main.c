#include <stdio.h>
#include "greater20.h"

int *ptrvec;
int num;
int result=0;
int main(void)
{
    long long int vec[] = {30, 20, 11, 45, 21, 22, 78, 1, 2, 4, 5, 6, 13, 100};
    num = sizeof(vec) / sizeof(vec[0]);
    ptrvec = vec;
    result = vec_greater20();
    printf(result);

    return 0;
}
