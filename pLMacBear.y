%{
#include <stdio.h>
int yylex(void);
void yyerror(char *);
#include "y.tab.h"
extern int yylval;
int variables[26];
%}

%token VAR INT FLOAT ASSIGN SC
%token AND OR
%token PRINT
%token L G LE GE EQ NE
%token OPARENT EPARENT 
%token INC DEC MUL DIV MOD NOT 


%right ASSIGN
%left OPARENT EPARENT OBRACKET EBRACKET
%left OR AND TRUE FALSE COND IF ELSE
%left L G LE GE EQ NE
%left INC DEC
%left MUL DIV

%left NOT

%%
program:
    stmt program
    |program conditionlist program
    |stmt
    ;


	
stmt:
    PRINT OPARENT expr EPARENT SC           {printf("%d\n",$3);}
	|PRINT OPARENT VAR EPARENT SC {printf("%d\n",variables[$3]);}
    |expr SC                                {}
    |VAR ASSIGN expr SC			{variables[$1] = $3;}
    ;

conditionlist:
    conditionbegin conditionelse conditionend
    ;

conditionbegin:
    IF OPARENT condition EPARENT OBRACKET stmt EBRACKET
    {
        if($3){
            $$ = $6;
        }
        else{
            $$ = $7;
        }
    }
    ;

conditionelse:
    condelse 
    |condelse conditionelse
    |
    ;

condelse:
    ELSE OPARENT condition EPARENT OBRACKET stmt EBRACKET
    {   
        if($3 == 1){
             $6; 
        }
    }    
    ;

conditionend:
    ELSE OBRACKET stmt EBRACKET
    { $3;  }
    |
    ;

condition:
    TRUE    {$$ = 1;}
    |FALSE  {$$ = 0;}
    ;

expr:
    INT {$$ = $1;}
	|VAR {$$ = variables[$1];}
    |expr INC expr {$$ = $1 + $3;}
    |expr DEC expr {$$ = $1 - $3;}
    |expr MUL expr {$$ = $1 * $3;}
    |expr DIV expr {$$ = $1 / $3;}
    |expr MOD expr {$$ = $1 % $3;}
    ;
%%

void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}

int main(void) {
    yyparse();
    return 0;
}