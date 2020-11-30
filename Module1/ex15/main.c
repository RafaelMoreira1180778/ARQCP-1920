#include <stdio.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h"

int nSets;

int main()
{
    //The amout of numbers
    int num = 100;

    //The limit for the random number
    int limit = 20;

    //The array to store the random numbers
    int vector[num];

    //The pointer to the array
    int *vec = vector;

    //Index for 'for loop'
    int i;

    populate(vec, num, limit);

    for (i = 0; i < num; i++)
    {
        if (check(vec[i], vec[i + 1], vec[i + 2]) == 1)
        {
            inc_nsets();
        }
    }

    printf("\n%d\n", nSets);
    return 0;
}