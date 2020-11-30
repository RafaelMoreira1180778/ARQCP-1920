#include <stdio.h>
#include "sumeven.h"

int *ptrvec, num = 6, even;
	
int main(void) {
	
	int i;
	
	int vec[6] = {1, -4, 3, 10, 5, 14};
	ptrvec = vec;
	
	printf("Vetor de INTs original:\n");
	for (i=0; i < num; i++) {
		printf("%d ", vec[i]);
	}
	printf("\n");
	
	
	for (i=0; i < num; i++) {
		even = vec[i];
		printf("%d ", test_even());
	}
	printf("\n");
	
	printf("%d\n", vec_sum_even());	
	
	
	return 0;
}
