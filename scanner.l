%option noyywrap

%{
#include <stdio.h>
%}

%%

"int" {
    printf("KEYWORD: INT\n");
}

"if" {
    printf("KEYWORD: IF\n");
}

"else" {
    printf("KEYWORD: ELSE\n");
}

"return" {
    printf("KEYWORD: RETURN\n");
}

[0-9]+ {
    printf("NUMBER: %s\n", yytext);
}

[a-zA-Z][a-zA-Z0-9]* {
    printf("IDENTIFIER: %s\n", yytext);
}

"=" {
    printf("OPERATOR: =\n");
}

"+" {
    printf("OPERATOR: +\n");
}

"-" {
    printf("OPERATOR: -\n");
}

"*" {
    printf("OPERATOR: *\n");
}

"/" {
    printf("OPERATOR: /\n");
}

[ \t\n]+ {
    /* Ignore whitespace */
}

. {
    printf("UNKNOWN: %s\n", yytext);
}

%%

int main()
{
    yylex();
    return 0;
}