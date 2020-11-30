#include <stdio.h>
#include "activate.h"

int activate_2bit(int *ptr, int pos);

int main(void) {
	int x = -64, pos = 7;
	int *ptr = &x;
	
	activate_2bits(ptr, pos);
	
	//printf("%d\n", *ptr);
	
	return 0;
}
