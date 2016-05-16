#include <stdio.h>

extern "C" int DlinaStroki(char *s);
extern "C" char *CopyStr(char *s1, char *s2, int L);


int main()
{
	char a[80] = "bye ";
	char c[80] = "Amin";
	char b[80] = {0};

	//printf("copy '%s%s' to '%s%s':", c, b, a, b);

	char *d = CopyStr(c, a + 4, 4);
	printf("\nresult from CopyStr: '%s%s'", d, b);
	printf("\nresult string: '%s%s'", a, b);
	printf("\nlength of '%s': %d", d, DlinaStroki(d));

	char *e = CopyStr(c, a, 4);
	printf("\n\nresult from CopyStr: '%s%s'", e, b);
	printf("\nresult string: '%s%s'", a, b);
	printf("\nlength of '%s': %d", e, DlinaStroki(e));



	getchar();
	getchar();
	return 0;
}

