/*Determina as constantes que serão preenchidas pelo programa na tabela definida abaixo*/
char("A").
char("B").
char("C").
char("D").
char("E"). 
/*Aqui irá colocar as condições para não repetir os caracteres na condições abaixo (linha, coluna e bloco)*/
verifica(A, B, C, D, E) :- 
    char(A), char(B), char(C), char(D), char(E), 
    A \= B, A \= C, A \= D, A \= E, 
    B \= C, B \= D, B \= E, 
    C \= D, C \= E, 
    D \= E. 
/*Determina a tabela do jogo*/
sudoku([[X11, X12, X13, X14, X15],
       [X21, X22, X23, X24, X25],
       [X31, X32, X33, X34, X35],
       [X41, X42, X43, X44, X45],
       [X51, X52, X53, X54, X55]]):-    
     
get_time(T1),
/* Verifica as linhas*/
verifica(X11, X12, X13, X14, X15),  /*Linha 1*/
verifica(X21, X22, X23, X24, X25),  /*Linha 2*/
verifica(X31, X32, X33, X34, X35),  /*Linha 3*/
verifica(X41, X42, X43, X44, X45),  /*Linha 4*/
verifica(X51, X52, X53, X54, X55),  /*Linha 5*/
/* Verifica as colunas*/
verifica(X11, X21, X31, X41, X51),  /*Coluna 1*/
verifica(X12, X22, X32, X42, X52),  /*Coluna 2*/
verifica(X13, X23, X33, X43, X53),  /*Coluna 3*/
verifica(X14, X24, X34, X44, X54),  /*Coluna 4*/
verifica(X15, X25, X35, X45, X55),  /*Coluna 5*/ 
% write(T1),
/* Verifica os blocos*/
verifica(X11, X21, X22, X23, X32),  /*Bloco que contém a letra C pré definida*/
verifica(X12, X13, X14, X15, X24),  /*Bloco que contém a letra B pré definida*/
verifica(X31, X41, X51, X52, X53),  /*Bloco que contém a letra A pré definida*/
verifica(X54, X55, X45, X35, X25),  /*Bloco que contém a letra E pré definida*/
verifica(X42, X43, X44, X33, X34),  /*Bloco que contém a letra D pré definida*/ 
get_time(T2), X is T2 - T1, write("Tempo gasto: "), format('~5f', X), nl.
/* Para mudar o tipo da tabela é necessário mexer nesses blocos, deixando-os de acordo com a tabela desejada. Por exemplo, esse foi tirado do site que estava de exemplo na descrição do trabalho.*/
