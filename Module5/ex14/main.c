#include <stdio.h>
#include <stdlib.h>
#include "matrix.h"

int main() {
	int lines = 3, columns = 2;
	int **res = add_matrixes(new_matrix(lines, columns), new_matrix(lines, columns), lines, columns);

	printf("Endereço da matriz gerada: %p\n", res);

	free(res[0]), free(res);
	
	return 0;
}
