#include <stdio.h>
#include "changes.h"

void changes(int *ptr);
void changes_vec(int *ptrvec, int num);

int main(void) {
	int vec[] = {1, 2, 4, 8, 16};
	int *ptrvec;
	ptrvec = vec;

	changes_vec(int ptrvec, int num);

	return 0;
}
