
/* Tipos permitidos para ATRIBUTOS de símbolos terminais e não terminais */
%union{
   int d;
   ...
   struct decl *decl;
   struct stmt *stmt;
   struct expr *expr;
} ...



%token VOID
%token PLUS
%token <d> NUMBER

/* etc */

%type <decl> declaration func-declaration etc. 
%type <stmt> statement if-statement etc.
%type <expr> expression term etc.

/* etc */

%%

program
: declarations { return (struct decl *) 0; } /* só para ilustrar desenvolvimento incremental */
; 

declarations
: declaration 
| declarations declaration 
;

declaration
: func-declaration { return (struct decl *) 0; } /* só para desenvolvimento incremental */
| var-declaration { return (struct decl *) 0; }
;

type
: INTEGER
| BOOLEAN
;

func-declaration
: ID ':'  FUNCTION type '(' params ')' '='
block
| ID ':'  FUNCTION VOID '(' params ')' '='
block
;

params
: /* empty */
| param-list
;


param-list
: parameter
| param-list ',' parameter
;

var-declaration etc.

statements etc.

statement
: if_statement { return (struct stmt *) 0; } /* só para desenvolvimento incremental */
;

expressions etc.

expression
: expression '+' term { acoes ...} 
| term
;

/* etc. */

%%


