#include <stdio.h>
#include "salary.h"

int code = 0, currentSalary = 0;

int main(void) {
		
	printf("Insira o código (10, 11 ou 12): ");
	scanf("%d", &code);
	
	printf("Insira o salário atual (valor inteiro): ");
	scanf("%d", &currentSalary);

	int valor = new_salary();
	printf("Novo salário:  %d\n", new_salary());
	
	return 0;
}
