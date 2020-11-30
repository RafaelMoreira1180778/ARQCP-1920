#include <stdio.h>
#include "activate.h"

int activate_bit(int *ptr, int pos);

int main(void) {
	int x = 3;
	int *ptr = &x;
	int pos = 2;
	
	printf("%d, %d\n", *ptr, activate_bit(ptr, pos));
	
	return 0;
}
