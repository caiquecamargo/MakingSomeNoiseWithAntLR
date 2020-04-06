/*
	Toda gramática começa comum cabeçalho, que corresponde ao nome da gramática
	ArrayInit --> ArrayInit.g4
*/

grammar ArrayInit;

/*
	Uma regra chamada init que bate com valores entre {...}
*/

init	:	'{' value (',' value)* '}';  //Que bata que ao menos um valor

/*
	Um valor que pode ser um array ou um inteiro simples (INT)
*/

value	:	init
		|	INT	
		;
		
// Regras do parser começam com letras minusculas e regras do Lexer com letra Maiuscula

INT		:	[0-9]+ ;			//Define o token INT como um ou mais dígitos
WS		: 	[ \t\r\n]+ -> skip;	//Define o token whitespace, que é jogado fora.