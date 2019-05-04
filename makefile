install:
	yacc -d -Wconflicts-sr pLMacBear.y
	lex pLMacBear.l
	gcc lex.yy.c y.tab.c -o a.aipl

clear:
	rm a.aipl
	rm lex.yy.c
	rm y.tab.c
	rm y.tab.h
	
