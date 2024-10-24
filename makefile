all: analyseur

analyseur: lex.yy.o y.tab.c
	gcc -Wall y.tab.c lex.yy.o -ll -o analyseur

lex.yy.o: lex.yy.c
	gcc -Wall -c lex.yy.c

lex.yy.c: y.tab.c pglex
	lex -v pglex

y.tab.c: yacc pgyacc
	yacc -d pgyacc
	
yacc: pgyacc
	yacc pgyacc


clean:
	rm -f analyseur lex.yy.o lex.yy.c y.tab.c y.tab.h data.csv