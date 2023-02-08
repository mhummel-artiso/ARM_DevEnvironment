#include <stdio.h>

int fiborec(int);
int fiboiter(int);
int fiboreccache(int);
int fiboitercache(int);


int main()
{
	int n;
	for ( n= 0; n <= 10 ; n++ )
	{	
		printf("Fiborec %d: %d\n", n, fiborec(n));
	}
	for ( n= 0; n <= 10 ; n++ )
	{	
		printf("Fiboiter %d: %d\n", n, fiboiter(n));
	}
	for ( n= 0; n <= 10 ; n++ )
	{	
		printf("Fiboreccache %d: %d\n", n, fiboreccache(n));
	}
	for ( n= 0; n <= 10 ; n++ )
	{	
		printf("Fiboitercache %d: %d\n", n, fiboitercache(n));
	}
	return 0;
}

