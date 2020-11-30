#include <stdio.h>

int count_bits_zero(int x) {
	int count = 0, i;
	int size = sizeof(x)*8;
          
    for (i = 0; i < size; i++) {
		if (!(x & 1)) {				// o AND 1 retorna 1 apenas se ou outro bit tambem for 1
			count++;
		}
		x >>= 1;        
	}  
    return count;
}
