#include <stdio.h>
#include "cross.h"

short s1, s2;
short result;

int main(void)
{

    printf("Insira um valor numérico (short1):");
    scanf("%hd", &s1);

    printf("Insira um valor numérico (short2):");
    scanf("%hd", &s2);

    printf("%hd e %hd \n", s1, s2);

    result = crossSumBytes();
    printf("swapBytes = %hd\n", result);

    return 0;
}