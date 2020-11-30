#include <stdio.h>

void frequencies(float *grades, int n, int *freq) {
	int f, g, i;
	
	for (f = 0; f < 21; f++) {
		*(freq+f) = 0;
		for(g = 0; g < n; g++) {
			if(f == (int)*(grades+g)) {
				*(freq+f) += 1;
			}
		}
	}
	
	for (i=0; i<21; i++) {
		printf("%d ", *(freq+i));
	}
	
	
}
