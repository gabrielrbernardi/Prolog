% Alguns numeros primos pre-definidos
primo(2).
primo(3).

primo(A) :- 
            integer(A), 
            A > 3, 
            A mod 2 =\= 0, 
            \+ multi(A,3).

multi(B,C) :- 
                B mod C =:= 0.

multi(B,C) :- 
                C * C < B,
                L2 is C + 2,
                multi(B,C2).

goldbach(4,[2,2]).
goldbach(B,C) :- 
                B mod 2 =:= 0,
                B > 4,
                goldbach(B,C,3).

goldbach(B,[A,D],A) :- 
                        D is B - A,
                        primo(D),
                        A < D.

goldbach(B,C,A) :- 
                    A < B,
                    primo2(A,A1),
                    goldbach(B,C,A1).

primo2(A,A1) :- 
                A1 is A + 2,
                primo(A1), !.

primo2(A,A1) :- 
                A2 is A + 2,
                primo2(A2,A1).