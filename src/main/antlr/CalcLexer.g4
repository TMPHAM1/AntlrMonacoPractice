lexer grammar CalcLexer;

channels { WS_CHANNEL }

WS: [ \t]+ -> channel(WS_CHANNEL);
NL: ('\r\n' | '\r' | '\n');

INPUT_KW : 'input' ;
OUTPUT_KW : 'output' ;
PRODUCT_KW: 'product';

NUMBER_LIT : ('0'|[1-9][0-9]*)('.'[0-9]+)?;

ID: [a-zA-Z][a-zA-Z0-9_]* ;

LPAREN : '(' ;
RPAREN : ')' ;
EQUAL : '=' ;
MINUS : '-' ;
PLUS : '+' ;
MUL : '*' ;
DIV : '/' ;
IDENTIFIER: [a-zA-Z][a-zA-Z0-9_]*;
COMMENTTAG : '#';
COMMACHAR : ',';
DOT : '.';

ACCOUNT_EYE_CATCHER : 'Account';

PRODUCT_COUNTRY_LIST : 'US' | 'UK' | 'AUS' | 'INDIA'| 'CAN';

PRODUCT_CLASS: 'loan' | 'credit';

fragment STRINGLITERAL :
	'"' (~["\n\r] | '""' | '\'')* '"'
	| '\'' (~['\n\r] | '\'\'' | '"')* '\''
;

ACCOUNT_LIFECYCLE_STATUS :  'Active' | 'Inactive' | 'Closed';

fragment A:('a'|'A');
fragment B:('b'|'B');
fragment C:('c'|'C');
fragment D:('d'|'D');
fragment E:('e'|'E');
fragment F:('f'|'F');
fragment G:('g'|'G');
fragment H:('h'|'H');
fragment I:('i'|'I');
fragment J:('j'|'J');
fragment K:('k'|'K');
fragment L:('l'|'L');
fragment M:('m'|'M');
fragment N:('n'|'N');
fragment O:('o'|'O');
fragment P:('p'|'P');
fragment Q:('q'|'Q');
fragment R:('r'|'R');
fragment S:('s'|'S');
fragment T:('t'|'T');
fragment U:('u'|'U');
fragment V:('v'|'V');
fragment W:('w'|'W');
fragment X:('x'|'X');
fragment Y:('y'|'Y');
fragment Z:('z'|'Z');

UNRECOGNIZED : . ;
