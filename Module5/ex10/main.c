#include <stdio.h>
#include <stdlib.h>
#include "new_str.h"

int main(){
	char s[80] = "Pedro Miguel";
	char *ns = new_str(s);
	
	printf("String Inicial: %s\nNova String: %s\n", s, ns);
	free(ns);

	return 0;
}
