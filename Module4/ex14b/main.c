#include <stdio.h>
#include "join.h"

int join_bits(int a, int b, int pos);

int main(void) {

	int a = 4, b = -37, pos=4;

	printf("%d\n", join_bits(a, b, pos));

	return 0;
}

