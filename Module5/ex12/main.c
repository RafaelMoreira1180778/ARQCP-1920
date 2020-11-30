#include <stdio.h>
#include <stdlib.h>
#include "matrix.h"

int main() {
	int lines = 3, columns = 2, **res = new_matrix(lines, columns);

	printf("Endereço da matriz gerada: %p\n", res);
	
	printf("Valor presente: %d\n", find_matrix(res, lines, columns, 0));
	// a matriz tinha sido preenchida apenas com 0's

//	for (i = 0; i < lines; i++) { 
//		free(*(res+i));
//	}

	
	free(res[0]), free(res);

	return 0;
}
