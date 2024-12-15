/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "parser.yacc"

#include <stdio.h>
#include "TeaplAst.h"

extern A_pos pos;
extern A_program root;

extern int yylex(void);
extern "C"{
extern void yyerror(const char *s); 
extern int  yywrap();
}


#line 86 "y.tab.cpp"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "y.tab.hpp"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_3_ = 3,                         /* ','  */
  YYSYMBOL_4_ = 4,                         /* '='  */
  YYSYMBOL_OR = 5,                         /* OR  */
  YYSYMBOL_AND = 6,                        /* AND  */
  YYSYMBOL_7_ = 7,                         /* '<'  */
  YYSYMBOL_8_ = 8,                         /* '>'  */
  YYSYMBOL_LE = 9,                         /* LE  */
  YYSYMBOL_GE = 10,                        /* GE  */
  YYSYMBOL_EQ = 11,                        /* EQ  */
  YYSYMBOL_NE = 12,                        /* NE  */
  YYSYMBOL_13_ = 13,                       /* '+'  */
  YYSYMBOL_14_ = 14,                       /* '-'  */
  YYSYMBOL_15_ = 15,                       /* '*'  */
  YYSYMBOL_16_ = 16,                       /* '/'  */
  YYSYMBOL_17_ = 17,                       /* '!'  */
  YYSYMBOL_18_ = 18,                       /* '.'  */
  YYSYMBOL_19_ = 19,                       /* ':'  */
  YYSYMBOL_20_ = 20,                       /* ';'  */
  YYSYMBOL_21_ = 21,                       /* '['  */
  YYSYMBOL_22_ = 22,                       /* ']'  */
  YYSYMBOL_23_ = 23,                       /* '('  */
  YYSYMBOL_24_ = 24,                       /* ')'  */
  YYSYMBOL_25_ = 25,                       /* '{'  */
  YYSYMBOL_26_ = 26,                       /* '}'  */
  YYSYMBOL_ARROW = 27,                     /* ARROW  */
  YYSYMBOL_LET = 28,                       /* LET  */
  YYSYMBOL_STRUCT = 29,                    /* STRUCT  */
  YYSYMBOL_FN = 30,                        /* FN  */
  YYSYMBOL_RETURN = 31,                    /* RETURN  */
  YYSYMBOL_IF = 32,                        /* IF  */
  YYSYMBOL_ELSE = 33,                      /* ELSE  */
  YYSYMBOL_WHILE = 34,                     /* WHILE  */
  YYSYMBOL_CONTINUE = 35,                  /* CONTINUE  */
  YYSYMBOL_BREAK = 36,                     /* BREAK  */
  YYSYMBOL_INT = 37,                       /* INT  */
  YYSYMBOL_ID = 38,                        /* ID  */
  YYSYMBOL_NUM = 39,                       /* NUM  */
  YYSYMBOL_YYACCEPT = 40,                  /* $accept  */
  YYSYMBOL_Program = 41,                   /* Program  */
  YYSYMBOL_ProgramElementList = 42,        /* ProgramElementList  */
  YYSYMBOL_ProgramElement = 43,            /* ProgramElement  */
  YYSYMBOL_ArithExpr = 44,                 /* ArithExpr  */
  YYSYMBOL_ExprUnit = 45,                  /* ExprUnit  */
  YYSYMBOL_BoolExpr = 46,                  /* BoolExpr  */
  YYSYMBOL_ComExpr = 47,                   /* ComExpr  */
  YYSYMBOL_BoolUnit = 48,                  /* BoolUnit  */
  YYSYMBOL_AssignStmt = 49,                /* AssignStmt  */
  YYSYMBOL_LeftVal = 50,                   /* LeftVal  */
  YYSYMBOL_RightVal = 51,                  /* RightVal  */
  YYSYMBOL_FnCall = 52,                    /* FnCall  */
  YYSYMBOL_RightValList = 53,              /* RightValList  */
  YYSYMBOL_VarDeclStmt = 54,               /* VarDeclStmt  */
  YYSYMBOL_VarDecl = 55,                   /* VarDecl  */
  YYSYMBOL_VarDef = 56,                    /* VarDef  */
  YYSYMBOL_Type = 57,                      /* Type  */
  YYSYMBOL_StructDef = 58,                 /* StructDef  */
  YYSYMBOL_VarDeclList = 59,               /* VarDeclList  */
  YYSYMBOL_FnDeclStmt = 60,                /* FnDeclStmt  */
  YYSYMBOL_FnDecl = 61,                    /* FnDecl  */
  YYSYMBOL_ParamDecl = 62,                 /* ParamDecl  */
  YYSYMBOL_FnDef = 63,                     /* FnDef  */
  YYSYMBOL_CodeBlockStmtList = 64,         /* CodeBlockStmtList  */
  YYSYMBOL_CodeBlockStmt = 65,             /* CodeBlockStmt  */
  YYSYMBOL_ReturnStmt = 66,                /* ReturnStmt  */
  YYSYMBOL_CallStmt = 67,                  /* CallStmt  */
  YYSYMBOL_CondUnit = 68,                  /* CondUnit  */
  YYSYMBOL_IfStmt = 69,                    /* IfStmt  */
  YYSYMBOL_WhileStmt = 70                  /* WhileStmt  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  18
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   191

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  40
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  31
/* YYNRULES -- Number of rules.  */
#define YYNRULES  85
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  178

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   276


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    17,     2,     2,     2,     2,     2,     2,
      23,    24,    15,    13,     3,    14,    18,    16,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,    19,    20,
       7,     4,     8,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    21,     2,    22,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    25,     2,    26,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     5,     6,
       9,    10,    11,    12,    27,    28,    29,    30,    31,    32,
      33,    34,    35,    36,    37,    38,    39
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   126,   126,   133,   138,   143,   147,   151,   155,   159,
     166,   170,   174,   178,   182,   188,   192,   196,   200,   204,
     208,   212,   222,   226,   230,   236,   240,   244,   248,   252,
     256,   262,   266,   270,   276,   282,   286,   290,   294,   300,
     304,   310,   316,   320,   325,   330,   334,   340,   344,   348,
     352,   358,   362,   366,   370,   376,   380,   386,   392,   396,
     401,   406,   412,   416,   422,   427,   433,   438,   443,   447,
     451,   455,   459,   463,   467,   471,   475,   481,   485,   491,
     497,   501,   505,   511,   515,   521
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "','", "'='", "OR",
  "AND", "'<'", "'>'", "LE", "GE", "EQ", "NE", "'+'", "'-'", "'*'", "'/'",
  "'!'", "'.'", "':'", "';'", "'['", "']'", "'('", "')'", "'{'", "'}'",
  "ARROW", "LET", "STRUCT", "FN", "RETURN", "IF", "ELSE", "WHILE",
  "CONTINUE", "BREAK", "INT", "ID", "NUM", "$accept", "Program",
  "ProgramElementList", "ProgramElement", "ArithExpr", "ExprUnit",
  "BoolExpr", "ComExpr", "BoolUnit", "AssignStmt", "LeftVal", "RightVal",
  "FnCall", "RightValList", "VarDeclStmt", "VarDecl", "VarDef", "Type",
  "StructDef", "VarDeclList", "FnDeclStmt", "FnDecl", "ParamDecl", "FnDef",
  "CodeBlockStmtList", "CodeBlockStmt", "ReturnStmt", "CallStmt",
  "CondUnit", "IfStmt", "WhileStmt", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-136)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-39)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      35,  -136,   -31,    -9,    12,    19,  -136,    35,  -136,  -136,
    -136,   101,  -136,    80,    40,    48,    58,    68,  -136,  -136,
    -136,    62,     1,    86,    65,  -136,  -136,    81,    81,  -136,
      -8,   109,   109,   122,   127,   125,  -136,    85,   129,  -136,
     110,    62,  -136,  -136,  -136,  -136,    15,     1,    99,  -136,
     114,  -136,   133,  -136,    41,  -136,  -136,  -136,  -136,   121,
     128,   116,   148,   131,  -136,   132,  -136,   135,    10,   134,
     136,  -136,  -136,     1,     1,   115,   102,  -136,  -136,  -136,
       1,  -136,    94,   104,    11,   138,    31,    31,    31,    31,
      15,    15,   120,   105,     1,    22,    86,   124,    81,  -136,
     137,  -136,    15,   104,    47,   141,    62,    62,   157,   142,
     147,  -136,   146,   149,  -136,    31,    31,    31,    31,    31,
      31,  -136,  -136,    31,   130,   130,  -136,  -136,  -136,  -136,
      74,   150,   151,  -136,   144,    86,  -136,   152,  -136,    86,
     153,  -136,  -136,   154,   155,     1,  -136,  -136,  -136,  -136,
    -136,  -136,  -136,  -136,  -136,  -136,    84,   113,     1,   166,
     156,  -136,  -136,   143,  -136,  -136,   158,   160,    86,   161,
    -136,     1,  -136,    62,   162,   163,  -136,  -136
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       4,     9,     0,     0,     0,     0,     2,     4,     5,     6,
       7,     0,     8,    49,     0,     0,     0,     0,     1,     3,
      61,    67,     0,     0,     0,    45,    46,    60,    60,    76,
       0,     0,     0,     0,     0,    35,    69,     0,     0,    68,
       0,    67,    73,    70,    71,    72,     0,     0,    16,    15,
      39,    14,    40,    24,     0,    52,    18,    55,    56,    47,
       0,    49,    58,     0,    64,     0,    78,     0,     0,     0,
       0,    74,    75,    44,     0,     0,     0,    79,    65,    66,
       0,    33,     0,    14,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    50,     0,     0,    60,    57,
      62,    77,     0,     0,     0,     0,    67,    67,    42,     0,
       0,    38,     0,     0,    17,     0,     0,     0,     0,     0,
       0,    32,    31,     0,    10,    11,    12,    13,    23,    22,
      21,     0,     0,    51,     0,     0,    47,     0,    59,     0,
      33,    81,    80,     0,     0,    44,    41,    34,    37,    36,
      25,    27,    26,    28,    29,    30,    20,    19,    44,    48,
      50,    63,    82,    84,    85,    43,     0,     0,     0,     0,
      54,    44,    48,    67,     0,     0,    53,    83
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -136,  -136,   171,  -136,   -44,   -43,   -34,   111,   -41,  -136,
     -21,   -16,   -19,  -135,    21,   180,  -136,   -88,  -136,   -17,
    -136,  -136,  -136,  -136,   -40,  -136,  -136,  -136,   159,  -136,
    -136
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
       0,     5,     6,     7,    50,    51,    52,    85,    53,    36,
      54,   108,    56,   109,    39,    62,    15,    59,     9,    63,
      10,    11,    65,    12,    40,    41,    42,    43,    69,    44,
      45
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      37,    79,    38,    82,    83,    81,    55,    13,   136,    46,
     165,    64,    66,    84,    67,    47,    90,    91,    46,    18,
      37,     8,    38,   166,    47,   103,   134,   102,     8,    16,
      48,    49,    46,    47,   104,   121,   174,   103,    80,    48,
      49,   135,   124,   125,   126,   127,    84,   159,    48,    49,
      17,   161,    90,    91,   123,     1,   128,   129,   110,    92,
      25,   140,    93,     2,     3,     4,   143,   144,    26,    48,
      49,   141,   150,   151,   152,   153,   154,   155,   133,    82,
     172,   138,    29,    27,    22,    37,    37,    38,    38,    74,
       2,    28,   -38,    30,    31,   -38,    32,    33,    34,    23,
      35,    24,   -37,    75,    60,   -37,    76,    86,    87,    88,
      89,   115,   116,   117,   118,   119,   120,   -35,   114,    61,
     -35,    20,    73,    57,    58,    94,    21,    86,    87,    88,
      89,   -36,    68,   175,   -36,    96,    78,    97,    90,    91,
     112,   113,    71,   131,   132,    88,    89,    72,    73,    77,
      95,    98,    37,   111,    38,   101,   100,    99,   130,   106,
     145,   107,   122,   137,   139,   142,   146,   147,   148,   158,
     167,   149,   156,   157,   160,   168,   169,   162,    19,   105,
     163,   164,    14,     0,   170,   171,   173,     0,   176,   177,
       0,    70
};

static const yytype_int16 yycheck[] =
{
      21,    41,    21,    47,    47,    46,    22,    38,    96,    17,
     145,    28,    20,    47,    30,    23,     5,     6,    17,     0,
      41,     0,    41,   158,    23,    68,     4,    17,     7,    38,
      38,    39,    17,    23,    68,    24,   171,    80,    23,    38,
      39,    19,    86,    87,    88,    89,    80,   135,    38,    39,
      38,   139,     5,     6,    23,    20,    90,    91,    74,    18,
      20,   102,    21,    28,    29,    30,   106,   107,    20,    38,
      39,    24,   115,   116,   117,   118,   119,   120,    94,   123,
     168,    98,    20,    25,     4,   106,   107,   106,   107,     4,
      28,    23,    18,    31,    32,    21,    34,    35,    36,    19,
      38,    21,    18,    18,    39,    21,    21,    13,    14,    15,
      16,     7,     8,     9,    10,    11,    12,    18,    24,    38,
      21,    20,    23,    37,    38,     4,    25,    13,    14,    15,
      16,    18,    23,   173,    21,    19,    26,    21,     5,     6,
      38,    39,    20,    38,    39,    15,    16,    20,    23,    20,
      22,     3,   173,    38,   173,    20,    24,    26,    38,    25,
       3,    25,    24,    39,    27,    24,    24,    20,    22,    25,
       4,    22,    22,    22,    22,    19,    33,    24,     7,    68,
      26,    26,     2,    -1,    26,    25,    25,    -1,    26,    26,
      -1,    32
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    20,    28,    29,    30,    41,    42,    43,    54,    58,
      60,    61,    63,    38,    55,    56,    38,    38,     0,    42,
      20,    25,     4,    19,    21,    20,    20,    25,    23,    20,
      31,    32,    34,    35,    36,    38,    49,    50,    52,    54,
      64,    65,    66,    67,    69,    70,    17,    23,    38,    39,
      44,    45,    46,    48,    50,    51,    52,    37,    38,    57,
      39,    38,    55,    59,    59,    62,    20,    51,    23,    68,
      68,    20,    20,    23,     4,    18,    21,    20,    26,    64,
      23,    48,    44,    45,    46,    47,    13,    14,    15,    16,
       5,     6,    18,    21,     4,    22,    19,    21,     3,    26,
      24,    20,    17,    45,    46,    47,    25,    25,    51,    53,
      51,    38,    38,    39,    24,     7,     8,     9,    10,    11,
      12,    24,    24,    23,    44,    44,    44,    44,    46,    46,
      38,    38,    39,    51,     4,    19,    57,    39,    59,    27,
      48,    24,    24,    64,    64,     3,    24,    20,    22,    22,
      45,    45,    45,    45,    45,    45,    22,    22,    25,    57,
      22,    57,    24,    26,    26,    53,    53,     4,    19,    33,
      26,    25,    57,    25,    53,    64,    26,    26
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    40,    41,    42,    42,    43,    43,    43,    43,    43,
      44,    44,    44,    44,    44,    45,    45,    45,    45,    45,
      45,    45,    46,    46,    46,    47,    47,    47,    47,    47,
      47,    48,    48,    48,    49,    50,    50,    50,    50,    51,
      51,    52,    53,    53,    53,    54,    54,    55,    55,    55,
      55,    56,    56,    56,    56,    57,    57,    58,    59,    59,
      59,    60,    61,    61,    62,    63,    64,    64,    65,    65,
      65,    65,    65,    65,    65,    65,    65,    66,    66,    67,
      68,    68,    68,    69,    69,    70
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     0,     1,     1,     1,     1,     1,
       3,     3,     3,     3,     1,     1,     1,     3,     1,     4,
       4,     3,     3,     3,     1,     3,     3,     3,     3,     3,
       3,     3,     3,     2,     4,     1,     4,     4,     3,     1,
       1,     4,     1,     3,     0,     3,     3,     3,     6,     1,
       4,     5,     3,    10,     8,     1,     1,     5,     1,     3,
       0,     2,     5,     7,     1,     4,     2,     0,     1,     1,
       1,     1,     1,     1,     2,     2,     1,     3,     2,     2,
       3,     3,     4,     9,     5,     5
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* Program: ProgramElementList  */
#line 127 "parser.yacc"
{  
  root = A_Program((yyvsp[0].programElementList));
  (yyval.program) = A_Program((yyvsp[0].programElementList));
}
#line 1262 "y.tab.cpp"
    break;

  case 3: /* ProgramElementList: ProgramElement ProgramElementList  */
#line 134 "parser.yacc"
{
  (yyval.programElementList) = A_ProgramElementList((yyvsp[-1].programElement), (yyvsp[0].programElementList));
}
#line 1270 "y.tab.cpp"
    break;

  case 4: /* ProgramElementList: %empty  */
#line 138 "parser.yacc"
{
  (yyval.programElementList) = nullptr;
}
#line 1278 "y.tab.cpp"
    break;

  case 5: /* ProgramElement: VarDeclStmt  */
#line 144 "parser.yacc"
{
  (yyval.programElement) = A_ProgramVarDeclStmt((yyvsp[0].varDeclStmt)->pos, (yyvsp[0].varDeclStmt));
}
#line 1286 "y.tab.cpp"
    break;

  case 6: /* ProgramElement: StructDef  */
#line 148 "parser.yacc"
{
  (yyval.programElement) = A_ProgramStructDef((yyvsp[0].structDef)->pos, (yyvsp[0].structDef));
}
#line 1294 "y.tab.cpp"
    break;

  case 7: /* ProgramElement: FnDeclStmt  */
#line 152 "parser.yacc"
{
  (yyval.programElement) = A_ProgramFnDeclStmt((yyvsp[0].fnDeclStmt)->pos, (yyvsp[0].fnDeclStmt));
}
#line 1302 "y.tab.cpp"
    break;

  case 8: /* ProgramElement: FnDef  */
#line 156 "parser.yacc"
{
  (yyval.programElement) = A_ProgramFnDef((yyvsp[0].fnDef)->pos, (yyvsp[0].fnDef));
}
#line 1310 "y.tab.cpp"
    break;

  case 9: /* ProgramElement: ';'  */
#line 160 "parser.yacc"
{
  (yyval.programElement) = A_ProgramNullStmt((yyvsp[0].pos));
}
#line 1318 "y.tab.cpp"
    break;

  case 10: /* ArithExpr: ArithExpr '+' ArithExpr  */
#line 167 "parser.yacc"
{
  (yyval.arithExpr) = A_ArithBiOp_Expr((yyvsp[-2].arithExpr)->pos, A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos, A_add, (yyvsp[-2].arithExpr), (yyvsp[0].arithExpr)));
}
#line 1326 "y.tab.cpp"
    break;

  case 11: /* ArithExpr: ArithExpr '-' ArithExpr  */
#line 171 "parser.yacc"
{
  (yyval.arithExpr) = A_ArithBiOp_Expr((yyvsp[-2].arithExpr)->pos, A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos, A_sub, (yyvsp[-2].arithExpr), (yyvsp[0].arithExpr)));
}
#line 1334 "y.tab.cpp"
    break;

  case 12: /* ArithExpr: ArithExpr '*' ArithExpr  */
#line 175 "parser.yacc"
{
  (yyval.arithExpr) = A_ArithBiOp_Expr((yyvsp[-2].arithExpr)->pos, A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos, A_mul, (yyvsp[-2].arithExpr), (yyvsp[0].arithExpr)));
}
#line 1342 "y.tab.cpp"
    break;

  case 13: /* ArithExpr: ArithExpr '/' ArithExpr  */
#line 179 "parser.yacc"
{
  (yyval.arithExpr) = A_ArithBiOp_Expr((yyvsp[-2].arithExpr)->pos, A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos, A_div, (yyvsp[-2].arithExpr), (yyvsp[0].arithExpr)));
}
#line 1350 "y.tab.cpp"
    break;

  case 14: /* ArithExpr: ExprUnit  */
#line 183 "parser.yacc"
{
  (yyval.arithExpr) = A_ExprUnit((yyvsp[0].exprUnit)->pos, (yyvsp[0].exprUnit));
}
#line 1358 "y.tab.cpp"
    break;

  case 15: /* ExprUnit: NUM  */
#line 189 "parser.yacc"
{
  (yyval.exprUnit) = A_NumExprUnit((yyvsp[0].tokenNum)->pos, (yyvsp[0].tokenNum)->num);
}
#line 1366 "y.tab.cpp"
    break;

  case 16: /* ExprUnit: ID  */
#line 193 "parser.yacc"
{
  (yyval.exprUnit) = A_IdExprUnit((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id);
}
#line 1374 "y.tab.cpp"
    break;

  case 17: /* ExprUnit: '(' ArithExpr ')'  */
#line 197 "parser.yacc"
{
  (yyval.exprUnit) = A_ArithExprUnit((yyvsp[-1].arithExpr)->pos, (yyvsp[-1].arithExpr));
}
#line 1382 "y.tab.cpp"
    break;

  case 18: /* ExprUnit: FnCall  */
#line 201 "parser.yacc"
{
  (yyval.exprUnit) = A_CallExprUnit((yyvsp[0].fnCall)->pos, (yyvsp[0].fnCall));
}
#line 1390 "y.tab.cpp"
    break;

  case 19: /* ExprUnit: LeftVal '[' NUM ']'  */
#line 205 "parser.yacc"
{
  (yyval.exprUnit) = A_ArrayExprUnit((yyvsp[-3].leftVal)->pos, A_ArrayExpr((yyvsp[-3].leftVal)->pos, (yyvsp[-3].leftVal), A_NumIndexExpr((yyvsp[-1].tokenNum)->pos, (yyvsp[-1].tokenNum)->num)));
}
#line 1398 "y.tab.cpp"
    break;

  case 20: /* ExprUnit: LeftVal '[' ID ']'  */
#line 209 "parser.yacc"
{
  (yyval.exprUnit) = A_ArrayExprUnit((yyvsp[-3].leftVal)->pos, A_ArrayExpr((yyvsp[-3].leftVal)->pos, (yyvsp[-3].leftVal), A_IdIndexExpr((yyvsp[-1].tokenId)->pos, (yyvsp[-1].tokenId)->id)));
}
#line 1406 "y.tab.cpp"
    break;

  case 21: /* ExprUnit: LeftVal '.' ID  */
#line 213 "parser.yacc"
{
  (yyval.exprUnit) = A_MemberExprUnit((yyvsp[-2].leftVal)->pos, A_MemberExpr((yyvsp[-2].leftVal)->pos, (yyvsp[-2].leftVal), (yyvsp[0].tokenId)->id));
}
#line 1414 "y.tab.cpp"
    break;

  case 22: /* BoolExpr: BoolExpr AND BoolExpr  */
#line 223 "parser.yacc"
{
  (yyval.boolExpr) = A_BoolBiOp_Expr((yyvsp[-2].boolExpr)->pos, A_BoolBiOpExpr((yyvsp[-2].boolExpr)->pos, A_and, (yyvsp[-2].boolExpr), (yyvsp[0].boolExpr)));
}
#line 1422 "y.tab.cpp"
    break;

  case 23: /* BoolExpr: BoolExpr OR BoolExpr  */
#line 227 "parser.yacc"
{
  (yyval.boolExpr) = A_BoolBiOp_Expr((yyvsp[-2].boolExpr)->pos, A_BoolBiOpExpr((yyvsp[-2].boolExpr)->pos, A_or, (yyvsp[-2].boolExpr), (yyvsp[0].boolExpr)));
}
#line 1430 "y.tab.cpp"
    break;

  case 24: /* BoolExpr: BoolUnit  */
#line 231 "parser.yacc"
{
  (yyval.boolExpr) = A_BoolExpr((yyvsp[0].boolUnit)->pos, (yyvsp[0].boolUnit));
}
#line 1438 "y.tab.cpp"
    break;

  case 25: /* ComExpr: ExprUnit '<' ExprUnit  */
#line 237 "parser.yacc"
{
  (yyval.comExpr) = A_ComExpr((yyvsp[-2].exprUnit)->pos, A_lt, (yyvsp[-2].exprUnit), (yyvsp[0].exprUnit));
}
#line 1446 "y.tab.cpp"
    break;

  case 26: /* ComExpr: ExprUnit LE ExprUnit  */
#line 241 "parser.yacc"
{
  (yyval.comExpr) = A_ComExpr((yyvsp[-2].exprUnit)->pos, A_le, (yyvsp[-2].exprUnit), (yyvsp[0].exprUnit));
}
#line 1454 "y.tab.cpp"
    break;

  case 27: /* ComExpr: ExprUnit '>' ExprUnit  */
#line 245 "parser.yacc"
{
  (yyval.comExpr) = A_ComExpr((yyvsp[-2].exprUnit)->pos, A_gt, (yyvsp[-2].exprUnit), (yyvsp[0].exprUnit));
}
#line 1462 "y.tab.cpp"
    break;

  case 28: /* ComExpr: ExprUnit GE ExprUnit  */
#line 249 "parser.yacc"
{
  (yyval.comExpr) = A_ComExpr((yyvsp[-2].exprUnit)->pos, A_ge, (yyvsp[-2].exprUnit), (yyvsp[0].exprUnit));
}
#line 1470 "y.tab.cpp"
    break;

  case 29: /* ComExpr: ExprUnit EQ ExprUnit  */
#line 253 "parser.yacc"
{
  (yyval.comExpr) = A_ComExpr((yyvsp[-2].exprUnit)->pos, A_eq, (yyvsp[-2].exprUnit), (yyvsp[0].exprUnit));
}
#line 1478 "y.tab.cpp"
    break;

  case 30: /* ComExpr: ExprUnit NE ExprUnit  */
#line 257 "parser.yacc"
{
  (yyval.comExpr) = A_ComExpr((yyvsp[-2].exprUnit)->pos, A_ne, (yyvsp[-2].exprUnit), (yyvsp[0].exprUnit));
}
#line 1486 "y.tab.cpp"
    break;

  case 31: /* BoolUnit: '(' ComExpr ')'  */
#line 263 "parser.yacc"
{
  (yyval.boolUnit) = A_ComExprUnit((yyvsp[-2].pos), (yyvsp[-1].comExpr));
}
#line 1494 "y.tab.cpp"
    break;

  case 32: /* BoolUnit: '(' BoolExpr ')'  */
#line 267 "parser.yacc"
{
  (yyval.boolUnit) = A_BoolExprUnit((yyvsp[-2].pos), (yyvsp[-1].boolExpr));
}
#line 1502 "y.tab.cpp"
    break;

  case 33: /* BoolUnit: '!' BoolUnit  */
#line 271 "parser.yacc"
{
  (yyval.boolUnit) = A_BoolUOpExprUnit((yyvsp[-1].pos), A_BoolUOpExpr((yyvsp[-1].pos), A_not, (yyvsp[0].boolUnit)));
}
#line 1510 "y.tab.cpp"
    break;

  case 34: /* AssignStmt: LeftVal '=' RightVal ';'  */
#line 277 "parser.yacc"
{
  (yyval.assignStmt) = A_AssignStmt((yyvsp[-3].leftVal)->pos, (yyvsp[-3].leftVal), (yyvsp[-1].rightVal));
}
#line 1518 "y.tab.cpp"
    break;

  case 35: /* LeftVal: ID  */
#line 283 "parser.yacc"
{
  (yyval.leftVal) = A_IdExprLVal((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id);
}
#line 1526 "y.tab.cpp"
    break;

  case 36: /* LeftVal: LeftVal '[' NUM ']'  */
#line 287 "parser.yacc"
{
  (yyval.leftVal) = A_ArrExprLVal((yyvsp[-3].leftVal)->pos, A_ArrayExpr((yyvsp[-3].leftVal)->pos, (yyvsp[-3].leftVal), A_NumIndexExpr((yyvsp[-1].tokenNum)->pos, (yyvsp[-1].tokenNum)->num)));
}
#line 1534 "y.tab.cpp"
    break;

  case 37: /* LeftVal: LeftVal '[' ID ']'  */
#line 291 "parser.yacc"
{
  (yyval.leftVal) = A_ArrExprLVal((yyvsp[-3].leftVal)->pos, A_ArrayExpr((yyvsp[-3].leftVal)->pos, (yyvsp[-3].leftVal), A_IdIndexExpr((yyvsp[-1].tokenId)->pos, (yyvsp[-1].tokenId)->id)));
}
#line 1542 "y.tab.cpp"
    break;

  case 38: /* LeftVal: LeftVal '.' ID  */
#line 295 "parser.yacc"
{
  (yyval.leftVal) = A_MemberExprLVal((yyvsp[-2].leftVal)->pos, A_MemberExpr((yyvsp[-2].leftVal)->pos, (yyvsp[-2].leftVal), (yyvsp[0].tokenId)->id));
}
#line 1550 "y.tab.cpp"
    break;

  case 39: /* RightVal: ArithExpr  */
#line 301 "parser.yacc"
{
  (yyval.rightVal) = A_ArithExprRVal((yyvsp[0].arithExpr)->pos, (yyvsp[0].arithExpr));
}
#line 1558 "y.tab.cpp"
    break;

  case 40: /* RightVal: BoolExpr  */
#line 305 "parser.yacc"
{
  (yyval.rightVal) = A_BoolExprRVal((yyvsp[0].boolExpr)->pos, (yyvsp[0].boolExpr));
}
#line 1566 "y.tab.cpp"
    break;

  case 41: /* FnCall: ID '(' RightValList ')'  */
#line 311 "parser.yacc"
{
  (yyval.fnCall) = A_FnCall((yyvsp[-3].tokenId)->pos, (yyvsp[-3].tokenId)->id, (yyvsp[-1].rightValList));
}
#line 1574 "y.tab.cpp"
    break;

  case 42: /* RightValList: RightVal  */
#line 317 "parser.yacc"
{
  (yyval.rightValList) = A_RightValList((yyvsp[0].rightVal), 0);
}
#line 1582 "y.tab.cpp"
    break;

  case 43: /* RightValList: RightVal ',' RightValList  */
#line 321 "parser.yacc"
{
  (yyval.rightValList) = A_RightValList((yyvsp[-2].rightVal), (yyvsp[0].rightValList));
}
#line 1590 "y.tab.cpp"
    break;

  case 44: /* RightValList: %empty  */
#line 325 "parser.yacc"
{
  (yyval.rightValList) = 0;
}
#line 1598 "y.tab.cpp"
    break;

  case 45: /* VarDeclStmt: LET VarDecl ';'  */
#line 331 "parser.yacc"
{
  (yyval.varDeclStmt) = A_VarDeclStmt((yyvsp[-2].pos), (yyvsp[-1].varDecl));
}
#line 1606 "y.tab.cpp"
    break;

  case 46: /* VarDeclStmt: LET VarDef ';'  */
#line 335 "parser.yacc"
{
  (yyval.varDeclStmt) = A_VarDefStmt((yyvsp[-2].pos), (yyvsp[-1].varDef));
}
#line 1614 "y.tab.cpp"
    break;

  case 47: /* VarDecl: ID ':' Type  */
#line 341 "parser.yacc"
{
  (yyval.varDecl) = A_VarDecl_Scalar((yyvsp[-2].tokenId)->pos, A_VarDeclScalar((yyvsp[-2].tokenId)->pos, (yyvsp[-2].tokenId)->id, (yyvsp[0].type)));
}
#line 1622 "y.tab.cpp"
    break;

  case 48: /* VarDecl: ID '[' NUM ']' ':' Type  */
#line 345 "parser.yacc"
{
  (yyval.varDecl) = A_VarDecl_Array((yyvsp[-5].tokenId)->pos, A_VarDeclArray((yyvsp[-5].tokenId)->pos, (yyvsp[-5].tokenId)->id, (yyvsp[-3].tokenNum)->num, (yyvsp[0].type)));
}
#line 1630 "y.tab.cpp"
    break;

  case 49: /* VarDecl: ID  */
#line 349 "parser.yacc"
{
  (yyval.varDecl) = A_VarDecl_Scalar((yyvsp[0].tokenId)->pos, A_VarDeclScalar((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id, 0));
}
#line 1638 "y.tab.cpp"
    break;

  case 50: /* VarDecl: ID '[' NUM ']'  */
#line 353 "parser.yacc"
{
  (yyval.varDecl) = A_VarDecl_Array((yyvsp[-3].tokenId)->pos, A_VarDeclArray((yyvsp[-3].tokenId)->pos, (yyvsp[-3].tokenId)->id, (yyvsp[-1].tokenNum)->num, 0));
}
#line 1646 "y.tab.cpp"
    break;

  case 51: /* VarDef: ID ':' Type '=' RightVal  */
#line 359 "parser.yacc"
{
  (yyval.varDef) = A_VarDef_Scalar((yyvsp[-4].tokenId)->pos, A_VarDefScalar((yyvsp[-4].tokenId)->pos, (yyvsp[-4].tokenId)->id, (yyvsp[-2].type), (yyvsp[0].rightVal)));
}
#line 1654 "y.tab.cpp"
    break;

  case 52: /* VarDef: ID '=' RightVal  */
#line 363 "parser.yacc"
{
  (yyval.varDef) = A_VarDef_Scalar((yyvsp[-2].tokenId)->pos, A_VarDefScalar((yyvsp[-2].tokenId)->pos, (yyvsp[-2].tokenId)->id, 0, (yyvsp[0].rightVal)));
}
#line 1662 "y.tab.cpp"
    break;

  case 53: /* VarDef: ID '[' NUM ']' ':' Type '=' '{' RightValList '}'  */
#line 367 "parser.yacc"
{
  (yyval.varDef) = A_VarDef_Array((yyvsp[-9].tokenId)->pos, A_VarDefArray((yyvsp[-9].tokenId)->pos, (yyvsp[-9].tokenId)->id, (yyvsp[-7].tokenNum)->num, (yyvsp[-4].type), (yyvsp[-1].rightValList)));
}
#line 1670 "y.tab.cpp"
    break;

  case 54: /* VarDef: ID '[' NUM ']' '=' '{' RightValList '}'  */
#line 371 "parser.yacc"
{
  (yyval.varDef) = A_VarDef_Array((yyvsp[-7].tokenId)->pos, A_VarDefArray((yyvsp[-7].tokenId)->pos, (yyvsp[-7].tokenId)->id, (yyvsp[-5].tokenNum)->num, 0, (yyvsp[-1].rightValList)));
}
#line 1678 "y.tab.cpp"
    break;

  case 55: /* Type: INT  */
#line 377 "parser.yacc"
{
  (yyval.type) = A_NativeType((yyvsp[0].pos), A_intTypeKind);
}
#line 1686 "y.tab.cpp"
    break;

  case 56: /* Type: ID  */
#line 381 "parser.yacc"
{
  (yyval.type) = A_StructType((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id);
}
#line 1694 "y.tab.cpp"
    break;

  case 57: /* StructDef: STRUCT ID '{' VarDeclList '}'  */
#line 387 "parser.yacc"
{
  (yyval.structDef) = A_StructDef((yyvsp[-4].pos), (yyvsp[-3].tokenId)->id, (yyvsp[-1].varDeclList));
}
#line 1702 "y.tab.cpp"
    break;

  case 58: /* VarDeclList: VarDecl  */
#line 393 "parser.yacc"
{
  (yyval.varDeclList) = A_VarDeclList((yyvsp[0].varDecl), 0);
}
#line 1710 "y.tab.cpp"
    break;

  case 59: /* VarDeclList: VarDecl ',' VarDeclList  */
#line 397 "parser.yacc"
{
  (yyval.varDeclList) = A_VarDeclList((yyvsp[-2].varDecl), (yyvsp[0].varDeclList));
}
#line 1718 "y.tab.cpp"
    break;

  case 60: /* VarDeclList: %empty  */
#line 401 "parser.yacc"
{
  (yyval.varDeclList) = 0;
}
#line 1726 "y.tab.cpp"
    break;

  case 61: /* FnDeclStmt: FnDecl ';'  */
#line 407 "parser.yacc"
{
  (yyval.fnDeclStmt) = A_FnDeclStmt((yyvsp[-1].fnDecl)->pos, (yyvsp[-1].fnDecl));
}
#line 1734 "y.tab.cpp"
    break;

  case 62: /* FnDecl: FN ID '(' ParamDecl ')'  */
#line 413 "parser.yacc"
{
  (yyval.fnDecl) = A_FnDecl((yyvsp[-4].pos), (yyvsp[-3].tokenId)->id, (yyvsp[-1].paramDecl), 0);
}
#line 1742 "y.tab.cpp"
    break;

  case 63: /* FnDecl: FN ID '(' ParamDecl ')' ARROW Type  */
#line 417 "parser.yacc"
{
  (yyval.fnDecl) = A_FnDecl((yyvsp[-6].pos), (yyvsp[-5].tokenId)->id, (yyvsp[-3].paramDecl), (yyvsp[0].type));
}
#line 1750 "y.tab.cpp"
    break;

  case 64: /* ParamDecl: VarDeclList  */
#line 423 "parser.yacc"
{
  (yyval.paramDecl) = A_ParamDecl((yyvsp[0].varDeclList));
}
#line 1758 "y.tab.cpp"
    break;

  case 65: /* FnDef: FnDecl '{' CodeBlockStmtList '}'  */
#line 428 "parser.yacc"
{
  (yyval.fnDef) = A_FnDef((yyvsp[-3].fnDecl)->pos, (yyvsp[-3].fnDecl), (yyvsp[-1].codeBlockStmtList));
}
#line 1766 "y.tab.cpp"
    break;

  case 66: /* CodeBlockStmtList: CodeBlockStmt CodeBlockStmtList  */
#line 434 "parser.yacc"
{
  (yyval.codeBlockStmtList) = A_CodeBlockStmtList((yyvsp[-1].codeBlockStmt), (yyvsp[0].codeBlockStmtList));
}
#line 1774 "y.tab.cpp"
    break;

  case 67: /* CodeBlockStmtList: %empty  */
#line 438 "parser.yacc"
{
  (yyval.codeBlockStmtList) = 0;
}
#line 1782 "y.tab.cpp"
    break;

  case 68: /* CodeBlockStmt: VarDeclStmt  */
#line 444 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockVarDeclStmt((yyvsp[0].varDeclStmt)->pos, (yyvsp[0].varDeclStmt));
}
#line 1790 "y.tab.cpp"
    break;

  case 69: /* CodeBlockStmt: AssignStmt  */
#line 448 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockAssignStmt((yyvsp[0].assignStmt)->pos, (yyvsp[0].assignStmt));
}
#line 1798 "y.tab.cpp"
    break;

  case 70: /* CodeBlockStmt: CallStmt  */
#line 452 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockCallStmt((yyvsp[0].callStmt)->pos, (yyvsp[0].callStmt));
}
#line 1806 "y.tab.cpp"
    break;

  case 71: /* CodeBlockStmt: IfStmt  */
#line 456 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockIfStmt((yyvsp[0].ifStmt)->pos, (yyvsp[0].ifStmt));
}
#line 1814 "y.tab.cpp"
    break;

  case 72: /* CodeBlockStmt: WhileStmt  */
#line 460 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockWhileStmt((yyvsp[0].whileStmt)->pos, (yyvsp[0].whileStmt));
}
#line 1822 "y.tab.cpp"
    break;

  case 73: /* CodeBlockStmt: ReturnStmt  */
#line 464 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockReturnStmt((yyvsp[0].returnStmt)->pos, (yyvsp[0].returnStmt));
}
#line 1830 "y.tab.cpp"
    break;

  case 74: /* CodeBlockStmt: CONTINUE ';'  */
#line 468 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockContinueStmt((yyvsp[-1].pos));
}
#line 1838 "y.tab.cpp"
    break;

  case 75: /* CodeBlockStmt: BREAK ';'  */
#line 472 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockBreakStmt((yyvsp[-1].pos));
}
#line 1846 "y.tab.cpp"
    break;

  case 76: /* CodeBlockStmt: ';'  */
#line 476 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockNullStmt((yyvsp[0].pos));
}
#line 1854 "y.tab.cpp"
    break;

  case 77: /* ReturnStmt: RETURN RightVal ';'  */
#line 482 "parser.yacc"
{
  (yyval.returnStmt) = A_ReturnStmt((yyvsp[-2].pos), (yyvsp[-1].rightVal));
}
#line 1862 "y.tab.cpp"
    break;

  case 78: /* ReturnStmt: RETURN ';'  */
#line 486 "parser.yacc"
{
 (yyval.returnStmt) = A_ReturnStmt((yyvsp[-1].pos), 0);
}
#line 1870 "y.tab.cpp"
    break;

  case 79: /* CallStmt: FnCall ';'  */
#line 492 "parser.yacc"
{
  (yyval.callStmt) = A_CallStmt((yyvsp[-1].fnCall)->pos, (yyvsp[-1].fnCall));
}
#line 1878 "y.tab.cpp"
    break;

  case 80: /* CondUnit: '(' ComExpr ')'  */
#line 498 "parser.yacc"
{
  (yyval.boolUnit) = A_ComExprUnit((yyvsp[-2].pos), (yyvsp[-1].comExpr));
}
#line 1886 "y.tab.cpp"
    break;

  case 81: /* CondUnit: '(' BoolExpr ')'  */
#line 502 "parser.yacc"
{
  (yyval.boolUnit) = A_BoolExprUnit((yyvsp[-2].pos), (yyvsp[-1].boolExpr));
}
#line 1894 "y.tab.cpp"
    break;

  case 82: /* CondUnit: '(' '!' BoolUnit ')'  */
#line 506 "parser.yacc"
{
  (yyval.boolUnit) = A_BoolUOpExprUnit((yyvsp[-3].pos), A_BoolUOpExpr((yyvsp[-2].pos), A_not, (yyvsp[-1].boolUnit)));
}
#line 1902 "y.tab.cpp"
    break;

  case 83: /* IfStmt: IF CondUnit '{' CodeBlockStmtList '}' ELSE '{' CodeBlockStmtList '}'  */
#line 512 "parser.yacc"
{
  (yyval.ifStmt) = A_IfStmt((yyvsp[-8].pos), (yyvsp[-7].boolUnit), (yyvsp[-5].codeBlockStmtList), (yyvsp[-1].codeBlockStmtList));
}
#line 1910 "y.tab.cpp"
    break;

  case 84: /* IfStmt: IF CondUnit '{' CodeBlockStmtList '}'  */
#line 516 "parser.yacc"
{
  (yyval.ifStmt) = A_IfStmt((yyvsp[-4].pos), (yyvsp[-3].boolUnit), (yyvsp[-1].codeBlockStmtList), 0);
}
#line 1918 "y.tab.cpp"
    break;

  case 85: /* WhileStmt: WHILE CondUnit '{' CodeBlockStmtList '}'  */
#line 522 "parser.yacc"
{
  (yyval.whileStmt) = A_WhileStmt((yyvsp[-4].pos), (yyvsp[-3].boolUnit), (yyvsp[-1].codeBlockStmtList));
}
#line 1926 "y.tab.cpp"
    break;


#line 1930 "y.tab.cpp"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 528 "parser.yacc"


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
