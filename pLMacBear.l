%{
#include <stdio.h>

%}

%%
true | 
false			{printf("BOOOLEAN ");}
const			{printf("CONSTANT ");}
printf			{printf("PRINT ");}
println			{printf("PRINT ");}
goto			{printf("GOTO ");}
if			{printf("IF ");}
elseif			{printf("ELSEIF ");}
else			{printf("ELSE ");}
then			{printf("THEN ");}
scan			{printf("SCAN ");}
switch			{printf("SWITCH ");}
case			{printf("CASE ");}
struct			{printf("STRUCT ");}
int				{printf("INTEGER ");}
char			{printf("CHAR ");}
double			{printf("DOUBLE ";)}
float			{printf("FLOAT ")}
enum			{printf("ENUM ");}
typedef			{printf("TYPEDEF ");}
union			{printf("UNION ");}
unsigned		{printf("UNSIGNED ");}
void			{printf("VOID ");}
while			{printf("WHILE ");}
for				{printf("FOR ");}
static			{printf("STATIC ");}
break			{printf("BREAK ");}
continue		{printf("CONTINUE ");}
do				{printf("DO ");}
NULL			{printf("NULL ");}
[a-zA-Z][a-zA-Z0-9]*	{printf("WORD ");}
[0-9]*			{printf("NUMBER ");}
\>			{printf("GREATER ");}
\<			{printf("LESSTHAN ");}
\=>			{printf("GREATERTHANEQUALS ");}
\=<			{printf("LESSTHANEQUALS ");}
\=			{printf("EQUALS ");}
\==			{printf("ISEQUAL");}
\!=			{printf("NOTEQUALS ");}
\&&			{printf("AND ");}
\|\|			{printf("OR ");}
\<=>			{printf("DOUBLEIMP ");}
\<-!			{printf("COMMENT ");}
\/\/			{printf("COMMENT ")}
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
