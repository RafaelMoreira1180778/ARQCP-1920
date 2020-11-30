#include <stdio.h>
#include "count.h"

int main(void) {
	int i, x = 37;
	int vec[] = {1, 2, 4, 8, 16};
	int *ptr;
	ptr = vec;
	
	int num = count_bits_zero(x);
	
	
	printf("Quantidade de bits inativos no número %d: %d.\n", x, num);
	
	printf("Vetor de INTs:\n");
	for (i=0; i < 5; i++) {
		printf("%d ", vec[i]);
	}
	printf("\n");
	
	printf("Quantidade de bits inativos no vetor: %d.\n", vec_count_bits_zero(ptr, num));
	
	return 0;
}
