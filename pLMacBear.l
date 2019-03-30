%{
#include <stdio.h>
int row = 1;
%}

%%
true							{printf("TRUE ");}
false							{printf("FALSE ");}
const							{printf("CONSTANT ");}
printf							{printf("PRINT ");}
println							{printf("PRINT ");}
goto							{printf("GOTO ");}
if								{printf("IF ");}
elseif							{printf("ELSEIF ");}
else							{printf("ELSE ");}
then							{printf("THEN ");}
scan							{printf("SCAN ");}
switch:							{printf("SWITCH ");}
case:							{printf("CASE ");}
struct							{printf("STRUCT ");}
except							{printf("EXCEPTION ");}
bool							{printf("BOOL ");}
int								{printf("INTEGER ");}
char							{printf("CHAR ");}
double							{printf("DOUBLE ");}
float							{printf("FLOAT ");}
enum							{printf("ENUM ");}
typedef							{printf("TYPEDEF ");}
union							{printf("UNION ");}
unsigned						{printf("UNSIGNED ");}
void							{printf("VOID ");}
while							{printf("WHILE ");}
for								{printf("FOR ");}
static							{printf("STATIC ");}
break							{printf("BREAK ");}
continue						{printf("CONTINUE ");}
pass							{printf("PASS ");}
do								{printf("DO ");}
\#define						{printf("DEFINE ");}
NULL							{printf("NULL ");}
new								{printf("NEW ");}
try								{printf("TRY ");}
catch							{printf("CATCH ");}
throw							{printf("THROW ");}
class							{printf("CLASS ");}
\#include						{printf("INCLUDE ");}
import							{printf("INCLUDE ");}
.\n								{printf("NEW_LINE\n%d-",row); row++;}
\>								{printf("GREATER ");}
\<								{printf("LESSTHAN ");}
\=>								{printf("GREATERTHANEQUALS ");}
\=<								{printf("LESSTHANEQUALS ");}
\=								{printf("EQUALS ");}
\==								{printf("ISEQUAL ");}
\!=								{printf("NOTEQUALS ");}
\&&								{printf("AND ");}
\|\|							{printf("OR ");}
\<=>							{printf("DOUBLEIMP ");}
\<-!							{printf("COMMENT ");}
\/\/							{printf("COMMENT ");}
\"								{printf("QUOTE ");}
\{								{printf("OBRACE ");}
\}								{printf("EBRACE ");}
\(								{printf("OBRACKET ");}
\)								{printf("EBRACKET ");}
;								{printf("SEMICOLUMN ");}
\+								{printf("SUMMATION ");}
\%								{printf("MODULUS ");}
\++								{printf("INCREMENT ");}
\--								{printf("DECREMENT ");}
\*=								{printf("MULTIEQUAL ");}
\/=								{printf("DIVEQUAL ");}
\-								{printf("SUBSTRACTION ");}
\*								{printf("MULTIPLICATION ");}
\/								{printf("DIVISION ");}
\\								{printf("ESCAPE ");}
" "								{printf("SPACE ");}
[ \t]+							{/* ignore whitespace */;}
[a-zA-Z](?:[a-zA-Z0-9_])*\(.*\)	{printf("FUNCTION ");}
[a-zA-Z](?:[a-zA-Z0-9_])*		{printf("WORD ");}
[0-9]*							{printf("NUMBER ");}
.								{printf("UNKNOWN CHAR ");}
<<EOF>>							{printf("\n"); yyterminate();}
%%


int main(int argc,char **argv){
printf("%d-",row);
row+=1;
if(argc > 1){
	yyin = fopen(argv[1],"r");
	yylex();

	return 0;
}
}
