install:
	lex pLMacBear.l
	gcc lex.yy.c -o MacBear.aipl -lfl

clear:
	rm MacBear.aipl
	
