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
%x VALSUCC
UINT [1-9][0-9]*

/* <INITIAL>"-" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return NEG;
} */

%%

"\n" { ++line, col = 1; }
<VALSUCC>"\n" { ++line, col = 1; }
"\t" { col += 4; }
<VALSUCC>"\t" { col += 4; }
" "  { ++col; }
<VALSUCC>" " { ++col; }

"//".*"\n" { ++line, col = 1; }

"/*" { BEGIN COMMENT; col += 2; }
<COMMENT>"\n" { ++line, col = 1; }
<COMMENT>"\t" { col += 4; }
<COMMENT>. { ++col; }
<COMMENT>"*/" { BEGIN INITIAL; col += 2; }

0 {
    BEGIN VALSUCC;
    yylval.tokenNum = A_TokenNum(A_Pos(line, col), 0);
    col++;
    return NUM;
}
{UINT} {
    BEGIN VALSUCC;
    yylval.tokenNum = A_TokenNum(A_Pos(line, col), calc(yytext, yyleng));
    col += yyleng;
    return NUM;
}

"-"{UINT} {
    BEGIN VALSUCC;
    yylval.tokenNum = A_TokenNum(A_Pos(line, col), -calc(yytext+1, yyleng-1));
    col += yyleng;
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

"->" {
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return ARROW;
}

[A-Z_a-z][A-Z_a-z0-9]* {
    BEGIN VALSUCC;
    yylval.tokenId = A_TokenId(A_Pos(line, col), strdup(yytext));
    col += yyleng;
    return ID;
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

<*>"<=" {
    BEGIN INITIAL;
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return LE;
}

<*>">=" {
    BEGIN INITIAL;
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return GE;
}

<*>"==" {
    BEGIN INITIAL;
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return EQ;
}

<*>"!=" {
    BEGIN INITIAL;
    yylval.pos = A_Pos(line, col);
    col += yyleng;
    return NE;
}

<*>. {
    BEGIN INITIAL;
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
