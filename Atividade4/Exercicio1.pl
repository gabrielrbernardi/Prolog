ehVazia(List) :- not(member(_,List)).

pulaSapo(N, [A, B|C]) :-
    X is B-A,
    (   X =< N -> ( pulaSapo(N,[B|C]) -> nl; 
                  	( ehVazia(C) -> true; false)
                  ); 
    	false
    ).