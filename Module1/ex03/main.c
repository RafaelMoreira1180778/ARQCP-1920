#include <stdio.h>
#include "sum_even.h"

int main()
{
    //The array of numbers
    int vec[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    //The amount of numbers in the vector
    int vecSize = sizeof(vec) / sizeof(vec[0]);

    //The address of the vector
    int *adr = vec;

    //The call of the sum_even function
    int sum = sum_even(adr, vecSize);

    //Prints the sum. Expected = 30
    printf("The sum of all the even numbers is: %d\n", sum);

    return 0;
}