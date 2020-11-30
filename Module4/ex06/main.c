#include <stdio.h>
#include "equal.h"

int main(void) {
	
	char *a = "casa";
	char *b = "casaty";
	
	int resultado = test_equal(a, b);
	
	if (resultado == 1) {
		printf("Strings iguais.\n");
	} else if (resultado == 0) {
		printf("Strings diferentes.\n");
	}
	
	return 0;
}
