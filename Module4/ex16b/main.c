#include <stdio.h>
#include "changes.h"

void changes(int *ptr);

int main(void) {
	int x = 21;
	int *ptr = &x;

	changes(ptr);

	printf("%d\n", *ptr);

	return 0;
}
