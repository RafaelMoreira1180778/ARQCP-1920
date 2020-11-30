#include <stdio.h>
#include "find_word.h"

int main(void) {
	char word[] = "seg";
	int n1 = sizeof(word)/sizeof(word[0]);
	char str[] = "ainda temos um segundo para gastar";
	int n2 = sizeof(str)/sizeof(str[0]);
	char initial_addr[] = "s";
	int i, j;
	
	printf("Palavras introduzidas:\n");
	for (i=0; i<n1; i++) {
	}
	printf("%s\n", word);
	for (j=0; j<n2; j++) {
	}
	printf("%s\n", str);
	
	find_word(str, word, initial_addr);
	

	if(find_word(str, word, initial_addr)==0) {
		printf("Palavra não presente.\n");
	} else {
		printf("Palavra presente.\n");
	}
	
	return 0;
}	
