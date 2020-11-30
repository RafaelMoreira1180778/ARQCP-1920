#include <stdio.h>
#include "ifcycle.h"

int num=0;

int main(void) {

	printf("Insira um número: ");
	scanf("%d",&num);

	printf("Resultado: %d\n", check_num());

	return 0;
}
