#include <stdio.h>
#include "area.h"

int base, height;

int main(void) {

	printf("Valores pré-definidos em Assembly:");
	printf("base: %d, altura: %d\n", base, height);

	printf("total = %d: 0x%x\n", getArea(), getArea());

	return 0;
}
