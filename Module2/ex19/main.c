#include <stdio.h>
#include "hotcold.h"

short current; //Current temp
short desired; //Desired temp
int result;

int main(void)
{

    current = 1;
    desired = 1;
    result = needed_time();
    printf("%d -> %d: %d secs", current, desired, result);

    return 0;
}