#include <stdio.h>
#include "add_byte.h"

void add_byte(char x, int *vec1, int *vec2)
{

	char aux;
	int temp1, temp2, i;

	int len = *vec1;
	*vec2 = len;

	vec1++;
	vec2++;

	for(i = 1; i <= len; i++)
	{
		aux = *vec1 + x;
		temp1 = *vec1>>8;
		temp2 = temp1<<8;
		*vec2 = aux|temp2;
		vec1++;
		vec2++;
	}
}
