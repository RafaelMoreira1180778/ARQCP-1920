#include <stdio.h>
#include <string.h>

char* where_exists(char* str1, char* str2) {
	
	char *p;
	int i, j=0, k;
 
	for(i = 0; i < *(str2+i); i++){
		if(*(str2+i) == *(str1+j)){
			p = (str2 + i);
			for(k=i, j=0; k < *(str2+k) && j < *(str2+j); j++, k++){
				if(*(str2+k) != *(str1+j)){
					break;
				}
			}
			if(!*(str1+j)){
				return p;
			}
		}
	}
	return 0;
}		
