#include <stdio.h>
#include "join.h"

int join_bits(int a, int b, int pos);
int mixed_sum(int a, int b, int pos);

int main(void) {

	int a = 4, b = -37, pos=4;

	printf("%d\n", mixed_sum(a, b, pos));

	return 0;
}

