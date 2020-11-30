#include <stdio.h>
#include "sumfirstbyte.h"

int *ptrvec;
int num;
int result = 0;
int main(void)
{
    int vec[] = {1,2,3,4,5,6,7,8,9,10};
    num = sizeof(vec) / sizeof(vec[0]);
    ptrvec = vec;
    result = sum_first_byte();
    printf("Soma = %d\n", result);
    return 0;
}
