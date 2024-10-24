#ifndef FUNCTIONS_H
#define FUNCTIONS_H

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <ctype.h>

#define MAX_SYMBOLS 1000
#define CHARTAB_LENGTH 1000

int yyerror(char *s);
int yylex();

int add_symbol(char* value, int type);
char* extract(int cell_index);
int cell_exists(char* cell_name);

#endif /* FUNCTIONS_H */
