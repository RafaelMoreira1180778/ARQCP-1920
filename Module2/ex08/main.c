#include <stdio.h>
#include "cross.h"

short result;

int main(void)
{
    result = crossSumBytes();
    printf("swapBytes = %hd\n", result);

    return 0;
}