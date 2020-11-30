#include <stdio.h>
#include "exist_char.h"

int main(void) {
	char str1[] = "ana";
	int n1 = sizeof(str1)/sizeof(str1[0]);
	char str2[] = "banana";
	int n2 = sizeof(str2)/sizeof(str2[0]);
	int i, j;
	
	printf("Palavras introduzidas:\n");
	for (i=0; i<n1; i++) {
	}
	printf("%s\n", str1);
	for (j=0; j<n2; j++) {
	}
	printf("%s\n", str2);	


	if(where_exists(str1, str2)==0) {
		printf("Palavra não presente.\n");
	} else {
		printf("Palavra presente.\n");
	}
	
	return 0;
}

