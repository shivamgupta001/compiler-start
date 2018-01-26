%{
%}

%%
[0-9]+			printf("NUMBER");
[a-zA-Z][a-zA-Z0-9]*	printf("WORD");
[a-zA-Z0-9\/.-]+	printf("FILENAME");
\"			printf("QUOTE");
\{			printf("OBRACE");
\}			printf("EBRACE");
;			printf("SEMICOLON");
\n			printf("\n");
[ \t]+			printf(" ");
%%
