parser grammar CalcParser;

options { tokenVocab=CalcLexer; }

compilationUnit:
    (products+=product)*
    (inputs+=input)*
    (calcs+=calc)*
    (outputs+=output)*
    EOF
    ;

product: PRODUCT_KW productIdentifier productCountryIssuance productClass eol;

productCountryIssuance :
  PRODUCT_COUNTRY_LIST
  ;

productClass : 
    PRODUCT_CLASS
;
productIdentifier :
IDENTIFIER 
;


eol:
    NL
    ;

input:
	INPUT_KW ID eol
    ;

output:
    OUTPUT_KW ID eol
    ;

calc:
	target=ID EQUAL value=expression eol
	;

expression:
	NUMBER_LIT
	| ID
	| LPAREN expression RPAREN
	| expression operator=(MUL|DIV) expression
	| expression operator=(MINUS|PLUS) expression
	| MINUS expression
	;
	    