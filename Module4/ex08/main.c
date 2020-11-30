#include <stdio.h>
#include "calc.h"

int main(void) {
	int a = 2, c = 4, num2 = 10;
	int *b = &num2;
	
//int calc(int a, int *b, int c) {
//int z=(*b)-a;		z = (10 - 2) = 8
//return c*z-2;		return 30
//}
	
	printf("A soma é de %d.\n", calc(a, b, c));
	
	return 0;
}
