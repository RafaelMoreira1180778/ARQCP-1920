#include <stdlib.h>
#include "matrix.h"

int find_matrix(int **m, int y, int k, int num){
	int i, j;
	// y (linhas), k (colunas), num /valor passado por parametro a ser procurado
	for(i = 0; i < y; i++){
		for (j = 0; j < k; j++){
			if(m[i][j] == num){
				return 1;
			}
		}
	}
	return 0;
}
