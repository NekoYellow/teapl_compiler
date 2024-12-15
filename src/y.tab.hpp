/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_HPP_INCLUDED
# define YY_YY_Y_TAB_HPP_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    OR = 258,                      /* OR  */
    AND = 259,                     /* AND  */
    LE = 260,                      /* LE  */
    GE = 261,                      /* GE  */
    EQ = 262,                      /* EQ  */
    NE = 263,                      /* NE  */
    ARROW = 264,                   /* ARROW  */
    LET = 265,                     /* LET  */
    STRUCT = 266,                  /* STRUCT  */
    FN = 267,                      /* FN  */
    RETURN = 268,                  /* RETURN  */
    IF = 269,                      /* IF  */
    ELSE = 270,                    /* ELSE  */
    WHILE = 271,                   /* WHILE  */
    CONTINUE = 272,                /* CONTINUE  */
    BREAK = 273,                   /* BREAK  */
    INT = 274,                     /* INT  */
    ID = 275,                      /* ID  */
    NUM = 276                      /* NUM  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define OR 258
#define AND 259
#define LE 260
#define GE 261
#define EQ 262
#define NE 263
#define ARROW 264
#define LET 265
#define STRUCT 266
#define FN 267
#define RETURN 268
#define IF 269
#define ELSE 270
#define WHILE 271
#define CONTINUE 272
#define BREAK 273
#define INT 274
#define ID 275
#define NUM 276

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 16 "parser.yacc"

  A_pos pos;
  A_tokenId tokenId;
  A_tokenNum tokenNum;
  A_program program;
  A_programElementList programElementList;
  A_programElement programElement;

  A_arithExpr arithExpr;
  A_exprUnit exprUnit;
  A_arithBiOp arithBiOp;
  A_arithUOp arithUOp;
  A_fnCall fnCall;

  A_boolExpr boolExpr;
  A_comExpr comExpr;
  A_boolUnit boolUnit;
  A_boolBiOp boolBiOp;
  A_boolUOp boolUOp;
  A_comOp comOp;

  A_assignStmt assignStmt;
  A_leftVal leftVal;
  A_rightVal rightVal;
  A_rightValList rightValList;

  A_varDeclStmt varDeclStmt;
  A_varDecl varDecl;
  A_varDeclList varDeclList;
  A_varDef varDef;
  A_type type;

  A_structDef structDef;
  A_fnDeclStmt fnDeclStmt;
  A_fnDecl fnDecl;
  A_paramDecl paramDecl;

  A_fnDef fnDef;
  A_codeBlockStmt codeBlockStmt;
  A_codeBlockStmtList codeBlockStmtList;
  A_callStmt callStmt;
  A_returnStmt returnStmt;
  A_ifStmt ifStmt;
  A_whileStmt whileStmt;

#line 155 "y.tab.hpp"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_HPP_INCLUDED  */
