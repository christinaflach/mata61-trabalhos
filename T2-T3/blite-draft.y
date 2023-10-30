


%token ID
%token PLUS

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

block

statements etc.

expressions etc.




%%



