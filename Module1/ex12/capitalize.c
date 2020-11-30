#include <stdio.h>

void capitalize (char *str) {
	int i = 0;
	char *pStr;
	pStr = str;
	
	
	
	for (i=0; *(pStr+i) != '\0'; i++) {
		if (i==0 && (97<=*(str+i) && *(str+i)<=122)) {
			*(pStr+i) -= 32;
		} else if (*(str+i)==' ') {
		++i;
		if (97<=*(str+i) && *(str+i)<=122) {
			*(pStr+i) -= 32;
			}
		}
	}		
	//printf("\n%s\n", pStr);
	
}
