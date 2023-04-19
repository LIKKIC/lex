%{
#include<stdio.h>
%}
letter [a-zA-Z]
digit [0-9]
us [_]
id ({letter}|{us})({letter}|{digit}|{us})*
number {digit}+(.{digit}+)?(E[+-]?{digit}+)?
%%
if {printf("%s is a keyword",yytext);}
else { printf("%s is a keyword",yytext);}
{id} {printf("%s is an identifier",yytext);}
"<" { printf("%s is less than symbol",yytext);}
"<=" { printf("%s is less than or equals to symbol",yytext);}
{number} { printf("%s is a number",yytext);}
%%
int yywrap(){}
int main()
{
yylex();
return 0;
}
