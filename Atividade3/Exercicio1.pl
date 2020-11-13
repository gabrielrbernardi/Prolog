somadigito(A, A) :- A<10.
somadigito(A, B) :- A>=10, 
                    A1 is A // 10, 
                    A2 is A mod 10, 
                    somadigito(A1, B1), 
                    B is B1 + A2, 
                    !.