%{
#include <stdio.h>
%}

%%
true							{printf("TRUE ");}
false							{printf("FALSE ");}
final							{printf("FINAL ");}
print							{printf("PRINT ");}
if							{printf("IF ");}
elseif							{printf("ELSEIF ");}
else							{printf("ELSE ");}
input							{printf("INPUT ");}
catch							{printf("EXCEPTION ");}
return							{printf("RETURN ");}
bool							{printf("BOOL ");}
int							{printf("INTEGER ");}
str							{printf("STRING ");}
double							{printf("DOUBLE ");}
float							{printf("FLOAT ");}
enum							{printf("ENUM ");}
unsigned						{printf("UNSIGNED ");}
while							{printf("WHILE ");}
static							{printf("STATIC ");}
public							{printf("PUBLIC ");}
break							{printf("BREAK ");}
continue						{printf("CONTINUE ");}
NULL							{printf("NULL ");}
new							{printf("NEW ");}
try							{printf("TRY ");}
throw							{printf("THROW ");}
class							{printf("CLASS ");}
import							{printf("INCLUDE ");}
.\n							{printf("NEW_LINE\n");}
\?							{printf("THEN ");}
\>							{printf("GREATER ");}
\<							{printf("LESSTHAN ");}
\=>							{printf("GREATERTHANEQUALS ");}
\=<							{printf("LESSTHANEQUALS ");}
\=							{printf("EQUALS ");}
\==							{printf("ISEQUAL ");}
\!=							{printf("NOTEQUALS ");}
\&&							{printf("AND ");}
\|\|							{printf("OR ");}
\<=>							{printf("DOUBLEIMP ");}
\<-!							{printf("COMMENT ");}
\/\/							{printf("COMMENT ");}
\"							{printf("QUOTE ");}
\{							{printf("OBRACE ");}
\}							{printf("EBRACE ");}
\(							{printf("OBRACKET ");}
\)							{printf("EBRACKET ");}
;							{printf("SEMICOLUMN ");}
\+							{printf("SUMMATION ");}
\%							{printf("MODULUS ");}
\++							{printf("INCREMENT ");}
\--							{printf("DECREMENT ");}
\*=							{printf("MULTIEQUAL ");}
\/=							{printf("DIVEQUAL ");}
\-							{printf("SUBSTRACTION ");}
\*							{printf("MULTIPLICATION ");}
\/							{printf("DIVISION ");}
\\							{printf("ESCAPE ");}
" "							{printf("SPACE ");}
[ \t]+							{/* ignore whitespace */;}
[a-zA-Z](?:[a-zA-Z0-9_])*\(.*\)	{printf("FUNCTION ");}
[a-zA-Z](?:[a-zA-Z0-9_])*		{printf("VARIABLE ");}
[0-9]*							{printf("NUMBER ");}
.								{printf("UNKNOWN CHAR ");}
<<EOF>>							{printf("END_OF_FILE\n"); yyterminate();}
%%


int yywrap(void){

return 1;
}
