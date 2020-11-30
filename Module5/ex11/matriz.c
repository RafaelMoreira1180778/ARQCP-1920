#include <stdlib.h>
#include "matriz.h"

int **new_matrix(int lines, int columns){

	int i = 0, **new_matrix = (int **)malloc(lines * sizeof(int *));  

    new_matrix[0] = (int *)malloc(columns* lines * sizeof(int));

    for(i = 1; i < lines; i++)
    {
		new_matrix[i] = new_matrix[0] + i*columns;
	}
	
	return new_matrix;
}
