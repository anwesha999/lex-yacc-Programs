%option noyywrap
%{
	#include<stdio.h>
	int count_int = 0,count_float = 0,count_double = 0;
	void add();
%}

%%
int {count_int++; }
float {count_float++; }
double {count_double++; }
word add();
exit exit(0);
%%
int main()
{	
	yylex();
	return 0;
}
void add(){

	printf("Count for int = %d\n", count_int);
	printf("Count for double = %d\n", count_double);
	printf("Count for float = %d\n", count_float);
}
