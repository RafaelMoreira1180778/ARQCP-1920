#include <stdio.h>
#include <stdlib.h>
#include "matriz.h"

int main()
{
	int lines = 2, columns = 2, **res = new_matrix(lines, columns);

	printf("Endereço da matriz gerada: %p\n", res);

	free(res[0]), free(res);

	return 0;
}
