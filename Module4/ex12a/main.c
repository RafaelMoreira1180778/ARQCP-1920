#include <stdio.h>
#include "activate.h"

int activate_bit(int *ptr, int pos);

int main(void) {
	int x = 17;
	int *ptr = &x;
	int pos = 3;
	
	if (activate_bit(ptr, pos) == 1) {
		printf("Bit alterado.\n");
	} else if (activate_bit(ptr, pos) == 0){
		printf("Bit não alterado.\n");
	}
	
	return 0;
}

