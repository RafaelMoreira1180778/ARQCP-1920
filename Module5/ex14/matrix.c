#include <stdlib.h>
#include "matrix.h"

int **new_matrix(int lines, int columns){

	int i = 0, **new_matrix = (int **)malloc(lines * sizeof(int *));
	// O Pointer para uma matriz corresponde a uma array continuo com cada linha a seguir a anterior.

    new_matrix[0] = (int *)malloc(columns * lines * sizeof(int));

	// Criacao da primeira matriz
    for(i = 1; i < lines; i++) {
		new_matrix[i] = new_matrix[0] + i*columns;
	}
	
	return new_matrix;
}
