%{
#include <stdio.h>
#include <string.h>

void yyerror(const char *str){
	fprintf(stderr,"error: %s\n",str);
}

int yywrap(){
	return 1;	
}

void main(){
	yyparse();
}

%}

%token NUMBER TOKHEAT STATE TOKTARGET TOKTEMPERATURE

%%
commands:
	|	commands command
	;
command:
	heat_switch
	|
	target_set
	;
heat_switch:
	TOKHEAT STATE
	{
		printf("Heat Turned on or off\n");
	}
	;
target_set:
	TOKTARGET TOKTEMPERATURE NUMBER
	{
		printf(" Temperature set\n");
	}	
	;
%%
