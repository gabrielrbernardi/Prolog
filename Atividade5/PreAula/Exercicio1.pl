getValue(List, Index, Element) :-
    nth1(Index, List, X), write("O valor na posicao "), write(Index), write(" eh "), write(X),!.