%token ID NUM dtypeint dtypefloat dtypechar
%{
	#include<stdio.h>
%}
%%

ED:program
{
	printf("Valid Expressions : ");
}
;
program:varDeclaration
;
varDeclaration: typeSpecifier ' ' varDeclList ';'
;
varDeclList:varDeclList','varDeclInitialize
|varDeclInitialize
;
varDeclInitialize:varDeclId
;
varDeclId:ID
|
ID '[' NUM ']'
;
typeSpecifier:dtypeint
;



%%
void yyerror()
{
	printf("Invalid expressions : ");
}
main()
{
	printf("Enter expression : ");
	yyparse();
}
