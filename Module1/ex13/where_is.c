#include <string.h>
#include <stdio.h>

int where_is(char *str, char c, int *p)
{
    //The number of ocorrences of c
    //The index inside the string
    int numOcorrences = 0, i = 0;

    int j = 0;

    //The size of the string
    int strSize = strlen(str);

    while (i != strSize)
    {
        if (str[i] == c)
        {
            p[j] = i;
            ++j;
            ++numOcorrences;
        }
        ++i;
    }

    return numOcorrences;
}