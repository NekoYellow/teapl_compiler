%{
#include <stdio.h>
#include "TeaplAst.h"

extern A_pos pos;
extern A_program root;

extern int yylex(void);
extern "C"{
extern void yyerror(const char *s); 
extern int  yywrap();
}

%}

%union {
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
}

%left <pos> ','
%right <pos> '='
%left <pos> OR AND
%left <pos> '<' '>' LE GE EQ NE
%left <pos> '+' '-'
%left <pos> '*' '/'
%nonassoc <pos> NEG
%right <pos> '!'
%left <pos> '.'
%token <pos> ':' ';'
%left <pos> '[' ']'
%left <pos> '(' ')'
%token <pos> '{' '}'
%token <pos> ARROW
%token <pos> LET
%token <pos> STRUCT
%token <pos> FN RET
%token <pos> IF ELSE
%token <pos> WHILE CONTINUE BREAK
%token <pos> INT
%token <tokenId> ID
%token <tokenNum> NUM

%type <program> Program
%type <programElementList> ProgramElementList
%type <programElement> ProgramElement

%type <arithExpr> ArithExpr
%type <exprUnit> ExprUnit
%type <fnCall> FnCall

%type <boolExpr> BoolExpr
%type <comExpr> ComExpr
%type <boolUnit> BoolUnit

%type <assignStmt> AssignStmt
%type <leftVal> LeftVal
%type <rightVal> RightVal
%type <rightValList> RightValList

%type <varDeclStmt> VarDeclStmt
%type <varDecl> VarDecl
%type <varDeclList> VarDeclList
%type <varDef> VarDef
%type <type> Type

%type <structDef> StructDef
%type <fnDeclStmt> FnDeclStmt
%type <fnDecl> FnDecl
%type <paramDecl> ParamDecl

%type <fnDef> FnDef
%type <codeBlockStmt> CodeBlockStmt
%type <codeBlockStmtList> CodeBlockStmtList
%type <callStmt> CallStmt
%type <returnStmt> ReturnStmt
%type <boolUnit> CondUnit
%type <ifStmt> IfStmt
%type <whileStmt> WhileStmt

%start Program

%%                   /* beginning of rules section */

Program: ProgramElementList 
{  
  root = A_Program($1);
  $$ = A_Program($1);
}
;

ProgramElementList: ProgramElement ProgramElementList
{
  $$ = A_ProgramElementList($1, $2);
}
|
{
  $$ = nullptr;
}
;

ProgramElement: VarDeclStmt
{
  $$ = A_ProgramVarDeclStmt($1->pos, $1);
}
| StructDef
{
  $$ = A_ProgramStructDef($1->pos, $1);
}
| FnDeclStmt
{
  $$ = A_ProgramFnDeclStmt($1->pos, $1);
}
| FnDef
{
  $$ = A_ProgramFnDef($1->pos, $1);
}
| ';'
{
  $$ = A_ProgramNullStmt($1);
}
;


ArithExpr: ArithExpr '+' ArithExpr
{
  $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_add, $1, $3));
}
| ArithExpr '-' ArithExpr
{
  $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_sub, $1, $3));
}
| ArithExpr '*' ArithExpr
{
  $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_mul, $1, $3));
}
| ArithExpr '/' ArithExpr
{
  $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_div, $1, $3));
}
| ExprUnit
{
  $$ = A_ExprUnit($1->pos, $1);
}
;

ExprUnit: NUM
{
  $$ = A_NumExprUnit($1->pos, $1->num);
}
| ID
{
  $$ = A_IdExprUnit($1->pos, $1->id);
}
| '(' ArithExpr ')'
{
  $$ = A_ArithExprUnit($2->pos, $2);
}
| FnCall
{
  $$ = A_CallExprUnit($1->pos, $1);
}
| LeftVal '[' NUM ']'
{
  $$ = A_ArrayExprUnit($1->pos, A_ArrayExpr($1->pos, $1, A_NumIndexExpr($3->pos, $3->num)));
}
| LeftVal '[' ID ']'
{
  $$ = A_ArrayExprUnit($1->pos, A_ArrayExpr($1->pos, $1, A_IdIndexExpr($3->pos, $3->id)));
}
| LeftVal '.' ID
{
  $$ = A_MemberExprUnit($1->pos, A_MemberExpr($1->pos, $1, $3->id));
}
| NEG ExprUnit
{
  $$ = A_ArithUExprUnit($1, A_ArithUExpr($1, A_neg, $2));
}
;
;

BoolExpr: BoolExpr AND BoolExpr
{
  $$ = A_BoolBiOp_Expr($1->pos, A_BoolBiOpExpr($1->pos, A_and, $1, $3));
}
| BoolExpr OR BoolExpr
{
  $$ = A_BoolBiOp_Expr($1->pos, A_BoolBiOpExpr($1->pos, A_or, $1, $3));
}
| BoolUnit
{
  $$ = A_BoolExpr($1->pos, $1);
}
;

ComExpr: ExprUnit '<' ExprUnit
{
  $$ = A_ComExpr($1->pos, A_lt, $1, $3);
}
| ExprUnit LE ExprUnit
{
  $$ = A_ComExpr($1->pos, A_le, $1, $3);
}
| ExprUnit '>' ExprUnit
{
  $$ = A_ComExpr($1->pos, A_gt, $1, $3);
}
| ExprUnit GE ExprUnit
{
  $$ = A_ComExpr($1->pos, A_ge, $1, $3);
}
| ExprUnit EQ ExprUnit
{
  $$ = A_ComExpr($1->pos, A_eq, $1, $3);
}
| ExprUnit NE ExprUnit
{
  $$ = A_ComExpr($1->pos, A_ne, $1, $3);
}
;

BoolUnit: '(' ComExpr ')'
{
  $$ = A_ComExprUnit($1, $2);
}
| '(' BoolExpr ')'
{
  $$ = A_BoolExprUnit($1, $2);
}
| '!' BoolUnit
{
  $$ = A_BoolUOpExprUnit($1, A_BoolUOpExpr($1, A_not, $2));
}
;

AssignStmt: LeftVal '=' RightVal ';'
{
  $$ = A_AssignStmt($1->pos, $1, $3);
}
;

LeftVal: ID
{
  $$ = A_IdExprLVal($1->pos, $1->id);
}
| LeftVal '[' NUM ']'
{
  $$ = A_ArrExprLVal($1->pos, A_ArrayExpr($1->pos, $1, A_NumIndexExpr($3->pos, $3->num)));
}
| LeftVal '[' ID ']'
{
  $$ = A_ArrExprLVal($1->pos, A_ArrayExpr($1->pos, $1, A_IdIndexExpr($3->pos, $3->id)));
}
| LeftVal '.' ID
{
  $$ = A_MemberExprLVal($1->pos, A_MemberExpr($1->pos, $1, $3->id));
}
;

RightVal: ArithExpr
{
  $$ = A_ArithExprRVal($1->pos, $1);
}
| BoolExpr
{
  $$ = A_BoolExprRVal($1->pos, $1);
}
;

FnCall: ID '(' RightValList ')'
{
  $$ = A_FnCall($1->pos, $1->id, $3);
}
;

RightValList: RightVal
{
  $$ = A_RightValList($1, 0);
}
| RightVal ',' RightValList
{
  $$ = A_RightValList($1, $3);
}
|
{
  $$ = 0;
}
;

VarDeclStmt: LET VarDecl ';'
{
  $$ = A_VarDeclStmt($1, $2);
}
| LET VarDef ';'
{
  $$ = A_VarDefStmt($1, $2);
}
;

VarDecl: ID ':' Type
{
  $$ = A_VarDecl_Scalar($1->pos, A_VarDeclScalar($1->pos, $1->id, $3));
}
| ID '[' NUM ']' ':' Type
{
  $$ = A_VarDecl_Array($1->pos, A_VarDeclArray($1->pos, $1->id, $3->num, $6));
}
| ID
{
  $$ = A_VarDecl_Scalar($1->pos, A_VarDeclScalar($1->pos, $1->id, 0));
}
| ID '[' NUM ']'
{
  $$ = A_VarDecl_Array($1->pos, A_VarDeclArray($1->pos, $1->id, $3->num, 0));
}
;

VarDef: ID ':' Type '=' RightVal
{
  $$ = A_VarDef_Scalar($1->pos, A_VarDefScalar($1->pos, $1->id, $3, $5));
}
| ID '=' RightVal
{
  $$ = A_VarDef_Scalar($1->pos, A_VarDefScalar($1->pos, $1->id, 0, $3));
}
| ID '[' NUM ']' ':' Type '=' '{' RightValList '}'
{
  $$ = A_VarDef_Array($1->pos, A_VarDefArray($1->pos, $1->id, $3->num, $6, $9));
}
| ID '[' NUM ']' '=' '{' RightValList '}'
{
  $$ = A_VarDef_Array($1->pos, A_VarDefArray($1->pos, $1->id, $3->num, 0, $7));
}
;

Type: INT
{
  $$ = A_NativeType($1, A_intTypeKind);
}
| ID
{
  $$ = A_StructType($1->pos, $1->id);
}
;

StructDef: STRUCT ID '{' VarDeclList '}'
{
  $$ = A_StructDef($1, $2->id, $4);
}
;

VarDeclList: VarDecl
{
  $$ = A_VarDeclList($1, 0);
}
| VarDecl ',' VarDeclList
{
  $$ = A_VarDeclList($1, $3);
}
|
{
  $$ = 0;
}
;

FnDeclStmt: FnDecl ';'
{
  $$ = A_FnDeclStmt($1->pos, $1);
}
;

FnDecl: FN ID '(' ParamDecl ')'
{
  $$ = A_FnDecl($1, $2->id, $4, 0);
}
| FN ID '(' ParamDecl ')' ARROW Type
{
  $$ = A_FnDecl($1, $2->id, $4, $7);
}
;

ParamDecl: VarDeclList
{
  $$ = A_ParamDecl($1);
}

FnDef: FnDecl '{' CodeBlockStmtList '}'
{
  $$ = A_FnDef($1->pos, $1, $3);
}
;

CodeBlockStmtList: CodeBlockStmt CodeBlockStmtList
{
  $$ = A_CodeBlockStmtList($1, $2);
}
|
{
  $$ = 0;
}
;

CodeBlockStmt: VarDeclStmt
{
  $$ = A_BlockVarDeclStmt($1->pos, $1);
}
| AssignStmt
{
  $$ = A_BlockAssignStmt($1->pos, $1);
}
| CallStmt
{
  $$ = A_BlockCallStmt($1->pos, $1);
}
| IfStmt
{
  $$ = A_BlockIfStmt($1->pos, $1);
}
| WhileStmt
{
  $$ = A_BlockWhileStmt($1->pos, $1);
}
| ReturnStmt
{
  $$ = A_BlockReturnStmt($1->pos, $1);
}
| CONTINUE ';'
{
  $$ = A_BlockContinueStmt($1);
}
| BREAK ';'
{
  $$ = A_BlockBreakStmt($1);
}
| ';'
{
  $$ = A_BlockNullStmt($1);
}
;

ReturnStmt: RET RightVal ';'
{
  $$ = A_ReturnStmt($1, $2);
}
| RET ';'
{
 $$ = A_ReturnStmt($1, 0);
}
;

CallStmt: FnCall ';'
{
  $$ = A_CallStmt($1->pos, $1);
}
;

CondUnit: '(' ComExpr ')'
{
  $$ = A_ComExprUnit($1, $2);
}
| '(' BoolExpr ')'
{
  $$ = A_BoolExprUnit($1, $2);
}
| '(' '!' BoolUnit ')'
{
  $$ = A_BoolUOpExprUnit($1, A_BoolUOpExpr($2, A_not, $3));
}
;

IfStmt: IF CondUnit '{' CodeBlockStmtList '}' ELSE '{' CodeBlockStmtList '}'
{
  $$ = A_IfStmt($1, $2, $4, $8);
}
| IF CondUnit '{' CodeBlockStmtList '}'
{
  $$ = A_IfStmt($1, $2, $4, 0);
}
;

WhileStmt: WHILE CondUnit '{' CodeBlockStmtList '}'
{
  $$ = A_WhileStmt($1, $2, $4);
}
;


%%

extern "C"{
void yyerror(const char * s)
{
  fprintf(stderr, "%s\n",s);
}
int yywrap()
{
  return(1);
}
}
