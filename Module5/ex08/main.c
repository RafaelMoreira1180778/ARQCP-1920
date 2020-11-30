#include <stdio.h>
#include "fill_s2.h"

int main() {
	s2 a;
	s2 *s = &a;

	short vw[3] = {1, 2, 3};
	int vj = 25;
	char vc[3] = {'a', 'b', 'c'};

	fill_s2(s, vw, vj, vc);
	
	printf("\nEstrutura\nSHORT: \nINT: %d\nCHAR: %s\n", s->j, s->c);

	
//	printf("\nw= \n");
//	for(i = 0; i<3; i++){
//		printf("  %hi\n", s.w[i]);
//	}
	
//	printf("j = %d\n",s.j);
	
//	printf("c= \n");
//	for(i = 0; i<3; i++){
//		printf("  %c\n", s.c[i]);
//	}
	
	
	return 0;
}
