#include <stdio.h>
#include "greater_date.h"

unsigned int greater_date(unsigned int date1, unsigned int date2)
{
	if ((date1 << 8) > (date2 << 8)) // ano date1 > ano date2
	{
		return date1;
	}
	else if ((date1 << 8) < (date2 << 8)) // ano date1 < ano date2
	{
		return date2;
	}

	if ((date1 << 24) > (date2 << 24)) // mes date1 > mes date2
	{
		return date1;
	}
	else if ((date1 << 24) < (date2 << 24)) // mes date1 < mes date2
	{
		return date2;
	}

	if ((date1 >> 24) > (date2 >> 24)) // dia date1 > dia date2
	{
		return date1;
	}
	else if ((date1 >> 24) < (date2 >> 24)) // dia date1 < dia date2
	{
		return date2;
	}

	return date1; // default return date1
}
