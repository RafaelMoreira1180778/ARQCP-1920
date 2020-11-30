#include <stdio.h>
#include "power_ref.h"

int main()
{
    //The variable that will hold the result
    //Will use 2 for easier calculations
    int k = 2;

    //The pointer to the destination variable
    int *x = &k;

    //The power that will be aplied to k
    //Result should be 8 (2^3)
    int y = 3;

    printf("Before the function: %d\n", k);

    power_ref(x, y);

    printf("After the function: %d\n", k);
    return 0;
}