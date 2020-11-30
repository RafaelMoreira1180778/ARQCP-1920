#include <stdio.h>
#include <string.h>

char* find_word(char* str, char* word, char* initial_addr) {
	
	char *p;
	int i, j=0, k;
	//char letra = *initial_addr;
		
	for(i = 0; i < *(str+i); i++){
		
		if(*(str+i) == ' '){
			i++;
			if(*(str+i) == *(word+j)){
				p = (str + i);
				for(k=i, j=0; k < *(str+k) && j < *(str+j); j++, k++){
					if(*(str+k) != *(word+j)){
						break;
					}
				}
				if(!*(word+j)){
					return p;
				}
			}			
		}
	}
	return 0;
	
}	
