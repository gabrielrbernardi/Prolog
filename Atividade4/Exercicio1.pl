ehVazia(Lista) :- not(member(_,Lista)).

pulaSapo(N, [A, B|C]) :-
    X is B-A, %X recebera o valor da diferenca entre os dois proximos canos
    (   X =< N -> ( pulaSapo(N,[B|C]) -> nl; %se o valor da diferenca dos proximos canos for maior que o salto que o sapo consegue dar, o predicado retornara falso, o que indica que o sapo nao consegue pular os canos. caso contrario, prossegue com a execucao da recursao
                  	( ehVazia(C) -> true) %se chegarmos nos ultimos dois canos, o valor de C sera vazio, o que faria com que o predicado retornasse falso, o que faria com que, mesmo que os saltos sejam possiveis, a funcao retornaria falso. para isso foi criada a funcao ehVazio que verificara se C e uma lista vazia. Se isso ocorrer, indica que o sapo conseguiu fazer os pulos e chegamos no final da lista.
                  ); 
    	false
    ).