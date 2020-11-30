#include <stdio.h>
#include "add_byte.h"

int *vec1;
int *vec2;

int main(void)
{
	int i;
	int v1[] = {0,1,2,3,4};
	int size = sizeof(v1) / sizeof(v1[0]);
	int v2[size];

	vec1 = v1;
	vec2 = v2;

	add_byte(0, vec1, vec2);

	for (i = 0; i < size; i++)
	{
		printf("%d | %d\n", v1[i], v2[i]);
	}
	return 0;
}
