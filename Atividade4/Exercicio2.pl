ehMembro(A, [A|_]).
ehMembro(A, [_|B]) :- 
    ehMembro(A, B).

somaPar([Cabeca|Rabo], C) :- 
    D is C - Cabeca, 
    ehMembro(D, Rabo), !; %verifica se D e membro da lista "Rabo"
    somaPar(C, Rabo).