#include <stdio.h>
#include "fill_s1.h"

int main()
{
	s1 a;
	s1 *s = &a;

	int vi = 1;
	char vc = 'a';
	int vj = 2;
	char vd = 'b';
	fill_s1(s, vi, vc, vj, vd);
	
	printf("\nEstrutura\ni: %d\nc: %c\nj: %d\nd: %c\n", s->i, s->c, s->j, s->d);

	return 0;
}
