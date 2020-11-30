#include <stdio.h>
#include "addone.h"

int *ptrvec, num = 6;
	
int main(void) {
	
	int i;
	
	int vec[6] = {1, 2, 3, 4, 5, 6};
	ptrvec = vec;
	
	printf("Vetor de INTs original:\n");
	for (i=0; i < num; i++) {
		printf("%d ", vec[i]);
	}
	printf("\n");
	
	vec_add_one();
	
	printf("Vetor de INTs alterado:\n");
	for (i=0; i < num; i++) {
		printf("%d ", vec[i]);
	}
	printf("\n");	
	


	return 0;
}
