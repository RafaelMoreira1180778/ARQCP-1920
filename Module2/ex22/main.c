#include <stdio.h>
#include "functions.h"

int g, h, i, j, r;
int result;

int fc(void)
{
    if (i == j)
    {
        h = i - j + 1;
    }
    else
    {
        h = i + j - 1;
    }
    return h;
}

int f2c(void)
{
    if (i > j)
    {
        i = i - 1;
    }
    else
    {
        j = j + 1;
        h = j * i;
    }
    return h;
}

int f3c(void)
{
    if (i >= j)
    {
        h = i * j;
        g = i + 1;
    }
    else
    {
        h = i + j;
        g = i + j + 2;
    }
    r = g / h;
    return r;
}

int f4c(void)
{
    if (i + j < 10)
    {
        h = 4 * i * i;
    }
    else
    {
        h = j * j / 3;
    }
    return h;
}

int main(void)
{

    i = 3, j = 3;

    result = f();
    printf("f assembly = %d\n", result);

    result = f2();
    printf("f2 assembly = %d\n", result);

    result = f3();
    printf("f3 assembly = %d\n", result);

    result = f4();
    printf("f4 assembly = %d\n", result);

    result = fc();
    printf("f C = %d\n", result);

    result = f2c();
    printf("f2 C = %d\n", result);

    result = f3c();
    printf("f3 C = %d\n", result);

    result = f4c();
    printf("f4 C = %d\n", result);

    return 0;
}