#include <stdio.h>
#include "greater_date.h"

int main(void)
{
	unsigned int date1 = build_date(2019, 11, 14);		   // 14-2019-11
	unsigned int date2 = build_date(2019, 15, 11);		   // 15-2019-11
	unsigned int greaterDate = greater_date(date1, date2); // 15-2019-11
	printf("date1 = %d\ndate2 = %d\n", date1, date2);
	printf("%d is the greater date\n", greaterDate);
	return 0;
}
