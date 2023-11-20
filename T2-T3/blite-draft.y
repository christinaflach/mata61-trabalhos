
%token VOID
%token PLUS
%token NUMBER

/* etc */

%%

program
: declarations
; 

declarations
: declaration 
| declarations declaration 
;

declaration
: func-declaration
| var-declaration
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
: if_statement 
| /* etc */
;

expressions podem ser relacionais ou aritméticas, etc.

expression
: expression '+' term 
| term
;

/* etc. */

%%


