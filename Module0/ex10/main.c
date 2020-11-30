#include <stdio.h>
#include "average.h"

int main()
{

    int v[] = {4, 15};
    int n = sizeof(v) / sizeof(v[0]);
    float r = average_array(v, n);
    printf("average = %f\n", r);

    //int g_v[100];
    //int g_n = sizeof(g_v) / sizeof(g_v[0]);
    //int s;

    //s = average_global_array(g_v, g_n);
    //printf("average = %d\n", s);

    return 0;
}
