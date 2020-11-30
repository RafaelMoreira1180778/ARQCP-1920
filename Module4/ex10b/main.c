#include <stdio.h>
#include "count.h"

int main(void) {
	int x = 17;
	
	printf("Quantidade de bits inativos no número %d: %d.\n", x, count_bits_zero(x));

	return 0;
}
