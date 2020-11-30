#include <stdio.h>

int average(int n1, int n2){
	return (n1+n2)/2;
}


int average_array (int v[], int n) {

int i, soma = 0;

for (i=0; i<n; i++)
//for (i=0; v[i]!='\0'; i++)
{	soma = soma + v[i]; }

return soma/n;
}


int average_global_array(int g_v[], int g_n){
int i, soma = 0;

//for (i=0; i<g_n; i++)
for (i=0; g_v[i]!='\0'; i++)
{	
	//printf("%d. Enter number: ", i+1);
    //scanf("%d", &g_v[i]);
    soma = soma + g_v[i];
    }

return soma/g_n;
}
