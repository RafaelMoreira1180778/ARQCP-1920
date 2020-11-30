#include <stdio.h>

int activate_bits(int a, int left, int right)
{
    int i;

    for (i = 0; i < right; i++)
    {
        a = a | (1 << i);
    }

    for (i = 31; i > left; i--)
    {
        a = a | (1 << i);
    }

    return a;
}