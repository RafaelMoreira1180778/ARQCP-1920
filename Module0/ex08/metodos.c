
int string_to_int(char *str)
{
int i, j, nn=0, np=0;
int vetor_numeros_pos[10];
int vetor_numeros_neg[10];


//. = 46 em ASCII
for(i=0; str[i]<='.'; i++)
{  vetor_numeros_pos[i] = str[i]; }

for(i=0; str[i]>='.'; i++)
{  vetor_numeros_neg[i] = str[i]; }

for(j=0; vetor_numeros_pos[j]>='0' && vetor_numeros_pos[j]<='9'; j++)
{  np = 10*np + (vetor_numeros_pos[j] - '0');}
return np;

for(k=0; vetor_numeros_neg[k]>='0' && vetor_numeros_neg[k]<='9'; k++)
{  nn = 10*nn + (vetor_numeros_neg[k] - '0');}
return nn;

}
