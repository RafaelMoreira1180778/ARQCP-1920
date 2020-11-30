#include <stdio.h>
#include "swap.h"

short s=0;

short swapBytes();

int main(void) {
	
	printf("Insira um valor numérico (short):");
	scanf("%hd",&s);

	printf("swapBytes = %hd\n", swapBytes());
	
	return 0;
}
