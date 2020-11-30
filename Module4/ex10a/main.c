#include <stdio.h>
#include "count.h"

int count_bits_zero(int x);

int main(void) {
	int x = 17;
	
	printf("Quantidade de bits inativos no número %d: %d.\n", x, count_bits_zero(x));

	return 0;
}

