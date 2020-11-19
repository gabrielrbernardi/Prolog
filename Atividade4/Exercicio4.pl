intercala([],B,B). %se primeira lista vazia, intercala com os proprios elementos de B
intercala(A,[],A). %se segunda lista vazia, intercala com os proprios elementos de A

%para os seguintes predicados temos que o algoritmo ira escolher o menor valor entre o primeiro elemento da primeira lista e o primeiro elemento da segunda lista. feito isso, esse elemento será colocado no inicio da lista obtida pela recursão
intercala([D|A],[E|B],[E|C]) :-
    (   D > E -> intercala([D|A],B,C), !).
intercala([D|A],[E|B],[D|C]) :- 
    (   D =< E ->   intercala(A,[E|B],C), !).