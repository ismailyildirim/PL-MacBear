%{
#include <stdlib.h>
void yyerror(char *);
#include "y.tab.h"
extern int yylval;
extern char* yytext;
%}

%%
true                              {return TRUE;}
false                             {return FALSE;}
if                                  {return IF;}
else                                {return ELSE;}
print                               {return PRINT;}
[a-z]								{yylval = *yytext-'a'; return VAR;}
[0-9]+                              {yylval = atoi(yytext); return INT;}
[0-9]+\.[0-9]{0,8}                  {yylval = atof(yytext); return FLOAT;}
\=                                  {return ASSIGN;}
\&\&                                {return AND;}
\|\|                                {return OR;}
\<                                  {return L;}
\>                                  {return G;}
\<\=                                {return LE;}
\>\=                                {return GE;}
\=\=                                {return EQ;}
\!\=                                {return NE;}
\+                                  {return INC;}                                      
\-                                  {return DEC;}
\*                                  {return MUL;}
\/                                  {return DIV;}
\%                                  {return MOD;}
\!                                  {return NOT;}
\(                                  {return OPARENT;}    
\)                                  {return EPARENT;}
\{                                  {return OBRACKET;}  
\}                                  {return EBRACKET;}
\?                                  {return COND;}
\;                                  {return SC;}
[ \t\n]                                /**/
.                                   {printf("Invalid");}
%%

int yywrap(void) {
 return 1;
}