#include <stdio.h>
#include "average.h"

int average(int n1, int n2);

int average_array (int v[], int n);

int average_global_array(int g_v[], int g_n);


int main(){
	
int v[] = {4,16,10,20};
int n = sizeof(v)/sizeof(v[0]);
int r;

r = average_array(v, n);
printf("average = %d\n", r);


int g_v[100];
int g_n = sizeof(g_v)/sizeof(g_v[0]);
int s;

s = average_global_array(g_v, g_n);
printf("average = %d\n", s);


return 0;
}
