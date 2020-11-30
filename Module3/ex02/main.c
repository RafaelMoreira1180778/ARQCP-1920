#include <stdio.h>
#include "strcopy.h"

char *ptr1, *ptr2;

int main(void) {
	
	int i;
	
	char str1[] = "vabevibovu";
	ptr1 = str1;
	char str2[100];
	ptr2 = str2;
	
	printf("Str1:");
	for (i=0; *(str1+i) != '\0'; i++) {
	}
	printf("\n%s\n", str1);
	
	
	str_copy_porto();
	
	printf("Str2:");
	for (i=0; *(str2+i) != '\0'; i++) {
	}
	printf("\n%s\n", str2);

	return 0;
}
