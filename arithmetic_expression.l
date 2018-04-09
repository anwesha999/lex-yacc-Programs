
%option noyywrap
%{
/* 4a.1 Yacc Program to check the validity of an arithmetic Expression that uses operations*,-,
*/
    #include<stdio.h>
    #include"y.tab.h"
    int NUM, ID;
%}

%%
[0-9][0-9]*         {return NUM;}
[a-zA-Z_][_a-zA-Z0-9]*    {return ID;}
[\t]                      ;
\n                    return 0;
.                     return yytext[0];
%%
int main()
{
yylex();
return 0;
}