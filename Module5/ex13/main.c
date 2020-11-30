#include <stdio.h>
#include <stdlib.h>
#include "matriz.h"

int main()
{
	int lines = 2, columns = 2, **res = new_matrix(lines, columns);

	res[0][0] = 1;
	res[0][1] = 2;
	res[1][0] = 4;
	res[1][1] = 3;

	printf("Existem %d numeros impares na matriz\n", count_odd_matrix(res, lines, columns));

	free(res[0]), free(res);
	return 0;
}
