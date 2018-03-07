%{
	#include<stdio.h>
	#include<stdlib.h>
%}

%token NUM ID
%empty epsilon

%%

e : OP2 e OP OP2 e
| NUM
| ID

OP : 'AND' 
| 'OR'

OP2 : 'NOT' 
| epsilon
%%


main(){
	printf("Type the Expression & Press Enter Key\n");
	yyparse();
	printf("Vaild Expression \n");
}

yyerror(){
	printf("Invalid Expression!!!!!\n");
	exit(0);
}