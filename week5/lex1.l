%{
#include"y.tab.h"
%}
num [0-9]+
dtypeint int
dtypefloat float
dtypechar char
ID [a-zA-Z][a-zA-Z0-9]*
%%
{num} {return NUM;}
{dtypeint} {return dtypeint;}
{dtypefloat} {return dtypefloat;}
{dtypechar} {return dtypechar;}
{ID} {return ID;}
\n return 0;
. return yytext[0];
%% 
