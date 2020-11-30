#include <stdlib.h>
#include <time.h>
#include <stdio.h>

void populate(int *vec, int num, int limit)
{
    //Upper and lower are the limits for the random numbers
    //i is the index for the 'for' cycle
    int lower = 0, i = 0;

    for (; i < num; i++)
    {
        vec[i] = (rand() % (limit - lower + 1)) + lower;
        printf("%d\n", vec[i]);
    }
}