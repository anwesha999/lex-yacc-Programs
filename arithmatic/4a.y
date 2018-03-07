%{
	#include<stdio.h>
	#include<stdlib.h>
%}

%token NUM ID
%left '+' '-'
%left '*' '/'

%%

e : e '+' e
| e '-' e
| e '*' e
| e '/' e
| '('e')'
| NUM
| ID
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