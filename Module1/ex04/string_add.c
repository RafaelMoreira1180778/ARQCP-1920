#include <stdio.h>

void upper1(char *str) {
	int i;
	for (i = 0; str[i] != '\0'; i++) {
		if ('a' <= str[i] && str[i] <= 'z') {
			str[i] -= 32;
		}
	}
	printf("\n%s\n", str);
}
