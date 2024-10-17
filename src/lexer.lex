%{
#include <stdio.h>
#include <string.h>
#include "TeaplAst.h"
#include "y.tab.hpp"
extern int line, col;
int c;
int calc(const char *s, int len);
%}

%x COMMENT

%%

"\t" { col += 4; }
"\n" { ++line, col = 0; }
" "  { ++col; }

"//".*"\n" { ++line, col = 0; }

"/*" { BEGIN COMMENT; }
<COMMENT>"\n" { ++line; }
<COMMENT>"*/" { BEGIN 0; }
<COMMENT>. {}

[1-9][0-9]* {
    yylval.tokenNum = A_TokenNum(A_Pos(line, col), calc(yytext, yyleng));
    col += yyleng;
    return NUM;
}
0 {
    yylval.tokenNum = A_TokenNum(A_Pos(line, col), 0);
    ++col;
    return NUM;
}

"let" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return LET;
}

"struct" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return STRUCT;
}

"fn" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return FN;
}

"ret" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return RET;
}

"if" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return IF;
}

"else" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return ELSE;
}

"while" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return WHILE;
}

"continue" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return CONTINUE;
}

"break" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return BREAK;
}

"int" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return INT;
}

"&&" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return AND;
}

"||" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return OR;
}


"<=" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return LE;
}

">=" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return GE;
}

"==" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return EQ;
}

"!=" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return NE;
}

"->" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return ARROW;
}

[A-Z_a-z][A-Z_a-z0-9]* {
    yylval.tokenId = A_TokenId(A_Pos(line, col), strdup(yytext));
    col += yyleng;
    return ID;
}

. {
    yylval.pos = A_Pos(line, col);
    ++col;
    return *yytext;
}

%%

// This function takes a string of digits and its length as input, and returns the integer value of the string.
int calc(const char *s, int len) {
    int ret = 0;
    for(int i = 0; i < len; i++)
        ret = ret * 10 + (s[i] - '0');
    return ret;
}
