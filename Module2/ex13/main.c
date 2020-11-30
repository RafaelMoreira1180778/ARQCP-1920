#include <stdio.h>
#include "area.h"

int base, height;

int main(void) {

	printf("Valor da base:");
	scanf("%d",&base);
	
	printf("Valor da altura:");
	scanf("%d",&height);

	printf("total = %d: 0x%x\n", getArea(), getArea());

	return 0;
}
