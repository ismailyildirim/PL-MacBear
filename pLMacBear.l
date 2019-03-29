%{
#include <stdio.h>
%}

%%
true | 
false			{printf("BOOOLEAN ");}
const			{printf("CONSTANT ");}
printf			{printf("PRINT");}
println			{printf("PRINT");}
\>			{printf("GREATER ");}
\<			{printf("LESSTHAN ");}
\=>			{printf("GREATERTHANEQUALS ");}
\=<			{printf("LESSTHANEQUALS ");}
\=			{printf("EQUALS ");}
\==			{printf("ISEQUAL");}
NULL			{printf("NULL");}
\!=			{printf("NOTEQUALS ");}
\&&			{printf("AND ");}
\|\|			{printf("OR ");}
\<=>			{printf("DOUBLEIMP ");}
if			{printf("IF ");}
elseif			{printf("ELSEIF ");}
else			{printf("ELSE ");}
then			{printf("THEN ");}
while			{printf("WHILE ");}
scan			{printf("SCAN ");}
\<-!			{printf("COMMENT ");}
[a-zA-Z][a-zA-Z0-9]*	{printf("WORD ");}
[0-9]*			{printf("NUMBER ");}
\"			{printf("QUOTE ");}
\{			{printf("OBRACE ");}
\}			{printf("EBRACE ");}
;			{printf("SEMICOLUMN ");}
\+			{printf("SUMMATION ");}
\%			{printf("MODULUS ");}
\++			{printf("INCREMENT ");}
\--			{printf("DECREMENT ");}
\*=			{printf("MULTIEQUAL");}
\/=			{printf("DIVEQUAL");}
\-			{printf("SUBSTRACTION ");}
\*			{printf("MULTIPLICATION ");}
\/			{printf("DIVISION ");}
\\			{printf("ESCAPE");}
[ \t]+			{/* ignore whitespace */;}
.			{printf("UNKNOWN CHAR ");}
%%


int main(int argc,char **argv){
if(argc > 1){
	yyin = fopen(argv[1],"r");
	yylex();
	return 0;
}
}
